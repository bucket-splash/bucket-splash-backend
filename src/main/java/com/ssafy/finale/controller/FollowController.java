package com.ssafy.finale.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.finale.dto.Board;
import com.ssafy.finale.dto.Follow;
import com.ssafy.finale.service.FollowService;
import com.ssafy.finale.service.UserService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/follow")
public class FollowController {

	private static final Logger logger = LoggerFactory.getLogger(FollowController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private FollowService followService;

	@Autowired
	private UserService userService;

	@ApiOperation(value = "해당 유저를 팔로우하고 있는 유저들의 리스트를 반환합니다.", response = Board.class)
	@GetMapping("/followed/{user_id}")
	public ResponseEntity<Map> showFollowedByUser(@PathVariable int user_id) throws Exception {
		logger.debug("showFollowedByUser - 호출");
		Map<String, Object> map = new HashMap<>();
		map.put("Followed", followService.showFollowedByUser(user_id));
		return new ResponseEntity<Map>(map, HttpStatus.OK);
	}

	@ApiOperation(value = "해당 유저가 팔로우하고 있는 유저들의 리스트를 반환합니다.", response = Board.class)
	@GetMapping("/following/{user_id}")
	public ResponseEntity<Map> showFollowingByUser(@PathVariable int user_id) throws Exception {
		logger.debug("showFollowingByUser - 호출");
		Map<String, Object> map = new HashMap<>();
		map.put("Following", followService.showFollowingByUser(user_id));
		return new ResponseEntity<Map>(map, HttpStatus.OK);
	}

	@ApiOperation(value = "followed_id, following_id, 를 넣어주세요. following_id가 followed_id를 팔로우합니다. 각각에는 user_id가 들어갑니다. 새로운 팔로우 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> writeFollow(@RequestBody Follow follow) {
		logger.debug("writeFollow - 호출");
		if (followService.writeFollow(follow)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "팔로우 번호에 해당하는 팔로우 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{follow_id}")
	public ResponseEntity<String> deleteFollow(@PathVariable int follow_id) {
		logger.debug("deleteFollow - 호출");
		if (followService.deleteFollow(follow_id)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}