package com.ssafy.finale.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.finale.UserSha256;
import com.ssafy.finale.dto.User;
import com.ssafy.finale.service.BoardService;
import com.ssafy.finale.service.BucketService;
import com.ssafy.finale.service.JwtServiceImpl;
import com.ssafy.finale.service.UserService;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/user")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT,
		RequestMethod.DELETE })
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	BucketService bucketService;

	@Autowired
	BoardService boardService;

	@Autowired
	private JwtServiceImpl jwtService;

	public static final Logger logger = LoggerFactory.getLogger(UserController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@ApiOperation(value = "로그인", notes = "Access-token과 로그인 결과 메세지를 반환한다.", response = Map.class)
	@PostMapping("/login")
	public ResponseEntity<Map<String, Object>> login(
			@RequestBody @ApiParam(value = "email과 password를 넣어주세요.", required = true) User user) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = null;
		try {
			user.setPassword(UserSha256.encrypt(user.getPassword()));
			User loginUser = userService.loginUser(user);
			System.out.println("user : " + user);
			System.out.println("loginUser : " + loginUser);
			if (loginUser != null) {
				String accessToken = jwtService.createAccessToken("email", loginUser.getEmail());// key, data
				String refreshToken = jwtService.createRefreshToken("email", loginUser.getEmail());// key, data
				userService.saveRefreshToken(user.getEmail(), refreshToken);
				logger.debug("로그인 accessToken 정보 : {}", accessToken);
				logger.debug("로그인 refreshToken 정보 : {}", refreshToken);
				resultMap.put("accessToken", accessToken);
				resultMap.put("refreshToken", refreshToken);
				resultMap.put("message", SUCCESS);
				resultMap.put("userInfo", loginUser);
				status = HttpStatus.ACCEPTED;
			} else {
				resultMap.put("message", FAIL);
				status = HttpStatus.ACCEPTED;
			}
		} catch (Exception e) {
			logger.error("로그인 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}

	@ApiOperation(value = "로그인", notes = "Access-token과 로그인 결과 메세지를 반환한다.", response = Map.class)
	@PostMapping("/kakao/login")
	public ResponseEntity<Map<String, Object>> kakaoLogin(
			@RequestBody @ApiParam(value = "email에 id, nickname에 nickname, password에 id, profile_image에 profile_image를 넣어주세요.", required = true) User user) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = null;
		try {
			user.setPassword(UserSha256.encrypt(user.getPassword()));
			User loginUser = userService.loginUser(user);
			if (loginUser == null) {
				userService.insert(user);
				loginUser = userService.loginUser(user);
			}
			if (loginUser != null) {
				String accessToken = jwtService.createAccessToken("email", loginUser.getEmail());// key, data
				String refreshToken = jwtService.createRefreshToken("email", loginUser.getEmail());// key, data
				userService.saveRefreshToken(user.getEmail(), refreshToken);
				logger.debug("로그인 accessToken 정보 : {}", accessToken);
				logger.debug("로그인 refreshToken 정보 : {}", refreshToken);
				resultMap.put("accessToken", accessToken);
				resultMap.put("refreshToken", refreshToken);
				resultMap.put("message", SUCCESS);
				resultMap.put("userInfo", loginUser);
				status = HttpStatus.ACCEPTED;
			} else {
				resultMap.put("message", FAIL);
				status = HttpStatus.ACCEPTED;
			}
		} catch (Exception e) {
			logger.error("로그인 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}

	@PostMapping("/signup")
	@ApiOperation(value = "회원가입", notes = "bio, email, nickname, password, profile_image를 넣어주세요.", response = Integer.class)
	public ResponseEntity<String> insert(@RequestBody User user) throws Exception {
		user.setPassword(UserSha256.encrypt(user.getPassword()));
		if (userService.insert(user)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.OK);
	}

	@ApiOperation(value = "user_id, nickname, bio, profile_image를 넣어주세요. 사용자의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", notes = "bio, nickname, profile_image를 넣어주세요.", response = String.class)
	@PutMapping("update")
	public ResponseEntity<String> updateUser(@RequestBody User user) throws Exception {
		if (userService.updateUser(user)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "회원인증", notes = "회원 정보를 담은 Token을 반환합니다.", response = Map.class)
	@GetMapping("/info/{email}")
	public ResponseEntity<Map<String, Object>> getInfo(
			@PathVariable("email") @ApiParam(value = "인증할 회원의 이메일.", required = true) String email,
			HttpServletRequest request) {
		System.out.println("email : " + email);
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = HttpStatus.UNAUTHORIZED;
		System.out.println("accessToken : " + request.getHeader("accessToken"));
		if (jwtService.checkToken(request.getHeader("accessToken"))) {
			logger.info("사용 가능한 토큰!!!");
			try {
//				로그인 사용자 정보.
				User user = userService.getUser(email);
				resultMap.put("userInfo", user);
				resultMap.put("message", SUCCESS);
				resultMap.put("Boards", boardService.showAllByUser(user.getEmail()));
				resultMap.put("Buckets", bucketService.showAllByUser(user.getEmail()));
				status = HttpStatus.ACCEPTED;
			} catch (Exception e) {
				logger.error("정보조회 실패 : {}", e);
				resultMap.put("message", FAIL);
				status = HttpStatus.INTERNAL_SERVER_ERROR;
			}
		} else {
			logger.error("사용 불가능 토큰!!!");
			resultMap.put("message", FAIL);
			status = HttpStatus.ACCEPTED;
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}

	@ApiOperation(value = "회원조회", notes = "회원 정보를 반환합니다.", response = Map.class)
	@GetMapping("/{email}")
	public ResponseEntity<Map<String, Object>> getUserInfo(
			@PathVariable("email") @ApiParam(value = "조회할 회원의 이메일.", required = true) String email,
			HttpServletRequest request) {
		System.out.println("email : " + email);
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = HttpStatus.UNAUTHORIZED;
		try {
			User user = userService.getUser(email);
			resultMap.put("userInfo", user);
			resultMap.put("message", SUCCESS);
			resultMap.put("Boards", boardService.showAllByUser(user.getEmail()));
			resultMap.put("Buckets", bucketService.showAllByUser(user.getEmail()));
			status = HttpStatus.ACCEPTED;
		} catch (Exception e) {
			logger.error("정보조회 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}

	@ApiOperation(value = "로그아웃", notes = "회원 정보를 담은 Token을 제거한다.", response = Map.class)
	@GetMapping("/logout/{email}")
	public ResponseEntity<?> removeToken(@PathVariable("email") String email) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = HttpStatus.ACCEPTED;
		try {
			userService.deleRefreshToken(email);
			resultMap.put("message", SUCCESS);
			status = HttpStatus.ACCEPTED;
		} catch (Exception e) {
			logger.error("로그아웃 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);

	}

	@ApiOperation(value = "Access Token 재발급", notes = "email을 넣어주세요. 만료된 access token을 재발급받는다.", response = Map.class)
	@PostMapping("/refresh")
	public ResponseEntity<?> refreshToken(@RequestBody User user, HttpServletRequest request) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = HttpStatus.ACCEPTED;
		String token = request.getHeader("refreshToken");
		logger.debug("token : {}, memberDto : {}", token, user);
		if (jwtService.checkToken(token)) {
			if (token.equals(userService.getRefreshToken(user.getEmail()))) {
				String accessToken = jwtService.createAccessToken("email", user.getEmail());
				logger.debug("token : {}", accessToken);
				logger.debug("정상적으로 액세스토큰 재발급!!!");
				resultMap.put("accessToken", accessToken);
				resultMap.put("message", SUCCESS);
				status = HttpStatus.ACCEPTED;
			}
		} else {
			logger.debug("리프레쉬토큰도 사용불!!!!!!!");
			status = HttpStatus.UNAUTHORIZED;
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}

	private ResponseEntity<String> exceptionHandling(Exception e) {
		e.printStackTrace();
		return new ResponseEntity<String>("Sorry: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
