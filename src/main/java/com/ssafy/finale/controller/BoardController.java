package com.ssafy.finale.controller;

import java.util.HashMap;
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

import com.ssafy.finale.dto.Board;
import com.ssafy.finale.service.BoardService;
import com.ssafy.finale.service.UserService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private UserService userService;

	@ApiOperation(value = "모든 자유 게시글의 정보를 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<Map<String, Object>>> retrieveBoard(int page) throws Exception {
		logger.debug("showAll - 호출");
		return new ResponseEntity<List<Map<String, Object>>>(boardService.showAll(page), HttpStatus.OK);
	}

	@ApiOperation(value = "글번호에 해당하는 자유 게시글의 정보를 반환한다.", response = Map.class)
	@GetMapping("{board_id}")
	public ResponseEntity<Map<String, Object>> detailBoard(@PathVariable int board_id) {
		logger.debug("detailBoard - 호출");
		return new ResponseEntity<Map<String, Object>>(boardService.detailBoard(board_id), HttpStatus.OK);
	}

	@ApiOperation(value = "유저가 작성한 자유 게시글의 정보를 반환한다.", response = Board.class)
	@GetMapping("/user/{user_email}")
	public ResponseEntity<Map> showBoardByUser(@PathVariable String user_email) throws Exception {
		logger.debug("showAllByUser - 호출");
		Map<String, Object> map = new HashMap<>();
		map.put("Boards", boardService.showAllByUser(user_email));
		map.put("userInfo", userService.getUser(user_email));
		return new ResponseEntity<Map>(map, HttpStatus.OK);
	}

	@ApiOperation(value = "board_title, board_content, created_by, board_image 를 넣어주세요. 새로운 자유 게시글 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> writeBoard(@RequestBody Board board) {
		logger.debug("writeBoard - 호출");
		if (boardService.writeBoard(board)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "board_id, board_title, board_content, board_image를 넣어주세요. 글번호에 해당하는 자유 게시글의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping
	public ResponseEntity<String> updateBoard(@RequestBody Board board) {
		logger.debug("updateBoard - 호출");
		logger.debug("" + board);
		if (boardService.updateBoard(board)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "글번호에 해당하는 자유 게시글의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{board_id}")
	public ResponseEntity<String> deleteBoard(@PathVariable int board_id) {
		logger.debug("deleteBoard - 호출");
		if (boardService.deleteBoard(board_id)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}