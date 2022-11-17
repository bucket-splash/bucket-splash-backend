package com.ssafy.finale.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.finale.dto.User;
import com.ssafy.finale.service.UserService;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT,
		RequestMethod.DELETE })
public class UserController {

	@Autowired
	UserService us;

	// 로그인
	@PostMapping("/login")
	private ResponseEntity<User> login(@RequestBody User user) {
		try {
			return new ResponseEntity<User>(us.loginUser(user.getUser_id(), user.getPwd()), HttpStatus.OK);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@PostMapping("/user")
	@ApiOperation(value = "사용자 정보를 삽입한다.", response = Integer.class)
	public ResponseEntity<?> insert(@RequestBody User user) {
		try {
			System.out.println(user);
			int result = us.insert(user);
			return new ResponseEntity<Integer>(result, HttpStatus.CREATED);

		} catch (Exception e) {
			return exceptionHandling(e);
		}
	}

	@GetMapping("/{user_id}")
	@ApiOperation(value = "사용자 정보를 조회한다.", response = Map.class)
	public ResponseEntity<Map> insert(@PathVariable String user_id) {
		try {
			User user = us.selectUser(user_id);
			if (user != null) {
				Map<String, Object> result = new HashMap<>();
				result.put("user_no", user.getUser_no());
				result.put("user_id", user.getUser_id());
				result.put("name", user.getName());
				return new ResponseEntity<Map>(result, HttpStatus.OK);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	private ResponseEntity<String> exceptionHandling(Exception e) {
		e.printStackTrace();
		return new ResponseEntity<String>("Sorry: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
