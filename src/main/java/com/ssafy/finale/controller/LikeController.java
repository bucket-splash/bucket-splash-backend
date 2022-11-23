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
import com.ssafy.finale.dto.Like;
import com.ssafy.finale.service.FollowService;
import com.ssafy.finale.service.LikeService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/like")
public class LikeController {

	private static final Logger logger = LoggerFactory.getLogger(LikeController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private LikeService likeService;

	@ApiOperation(value = "좋아요 id로 좋아요 정보를 반환합니다.", response = Board.class)
	@GetMapping("/{like_id}")
	public ResponseEntity<Like> showLikeInfo(@PathVariable int like_id) throws Exception {
		logger.debug("showLikeInfo - 호출");
		return new ResponseEntity<Like>(likeService.showLikeInfo(like_id), HttpStatus.OK);
	}

	@ApiOperation(value = "해당 유저가 특정 자유 게시글을 좋아요 눌렀는지 여부를 반환합니다.", response = Board.class)
	@GetMapping("/{board_id}/{user_email}")
	public ResponseEntity<Boolean> checkIfUserLiked(@PathVariable String user_email, @PathVariable int board_id)
			throws Exception {
		logger.debug("checkIfUserLiked - 호출");
		return new ResponseEntity<Boolean>(likeService.checkIfUserLiked(user_email, board_id), HttpStatus.OK);
	}

	@ApiOperation(value = "board_id, user_email을 입력해주세요. user_email이 board_id에 좋아요를 눌렀었으면 좋아요가 해제되고, 누르지 않았었으면 좋아요가 활성화됩니다. 새로운 좋아요 정보를 입력한니다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> writeLike(@RequestBody Like like) {
		logger.debug("writeLike - 호출");
		Boolean check = likeService.checkIfUserLiked(like.getUser_email(), like.getBoard_id());
		if(!check) { // 아직 좋아요 안한 상태인 경우 
			if (likeService.writeLike(like)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
		} else {
			Like result = likeService.showLikeInfoByEmail(like.getUser_email(), like.getBoard_id());
			if (likeService.deleteLike(result.getLike_id())) {
				return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
			}
			return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
		}
		
	}
	
}