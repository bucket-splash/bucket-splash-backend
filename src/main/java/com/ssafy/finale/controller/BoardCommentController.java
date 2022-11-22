package com.ssafy.finale.controller;

import java.util.List;
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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.finale.dto.BoardComment;
import com.ssafy.finale.service.BoardCommentService;
import com.ssafy.finale.service.UserService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/board/comment/")
public class BoardCommentController {

	private static final Logger logger = LoggerFactory.getLogger(BoardCommentController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private BoardCommentService boardCommentService;

	@Autowired
	private UserService userService;

	@ApiOperation(value = "특정 자유 게시글의 댓글 전체 조회한다.", response = Map.class)
	@GetMapping("{board_comment_id}")
	public ResponseEntity<List<BoardComment>> showBoardComment(@PathVariable int board_comment_id, int page) {
		logger.debug("showBoardComment - 호출");
		return new ResponseEntity<List<BoardComment>>(boardCommentService.showAll(board_comment_id, page),
				HttpStatus.OK);
	}

	@ApiOperation(value = "board_id, board_comment_content, created_by 를 넣어주세요. 새로운 댓글 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> writeBoardComment(@RequestBody BoardComment boardComment) {
		logger.debug("writeBoardComment - 호출");
		if (boardCommentService.writeBoardComment(boardComment)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "board_comment_content를 넣어주세요. 자유 게시글에 있는 특정 댓글 번호의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping("{board_comment_id}")
	public ResponseEntity<String> updateBoardComment(@RequestBody BoardComment boardComment) {
		logger.debug("updateBoardComment - 호출");
		if (boardCommentService.updateBoardComment(boardComment)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "댓글 번호에 해당하는 댓글의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{board_comment_id}")
	public ResponseEntity<String> deleteBoardComment(@PathVariable int board_comment_id) {
		logger.debug("deleteBoardComment - 호출");
		if (boardCommentService.deleteBoardComment(board_comment_id)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}