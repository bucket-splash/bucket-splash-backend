package com.ssafy.finale.controller;

import java.util.ArrayList;
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
import com.ssafy.finale.dto.Recruit;
import com.ssafy.finale.service.ApplyService;
import com.ssafy.finale.service.BoardService;
import com.ssafy.finale.service.RecruitService;
import com.ssafy.finale.service.UserService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/recruit")
public class RecruitController {

	private static final Logger logger = LoggerFactory.getLogger(RecruitController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private RecruitService recruitService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ApplyService applyService;

	@ApiOperation(value = "모든 모집 게시글의 정보를 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<Map<String, Object>>> retrieveRecruit() throws Exception {
		logger.debug("showAll - 호출");
		List<Map<String, Object>> result = recruitService.showAll();
		List<Map<String, Object>> list = new ArrayList<>();
		for(Map<String, Object> r : result) {
			Map<String, Object> tmp = new HashMap<>();
			tmp.put("recruitInfo", r);
			tmp.put("userInfo", userService.getUser(r.get("created_by").toString()));
			list.add(tmp);
		}
		return new ResponseEntity<List<Map<String, Object>>>(list, HttpStatus.OK);
	}

	@ApiOperation(value = "글번호에 해당하는 모집 게시글의 정보를 반환한다.", response = Recruit.class)
	@GetMapping("{recruit_id}")
	public ResponseEntity<Map> detailRecruit(@PathVariable int recruit_id) throws Exception {
		logger.debug("detailRecruit - 호출");
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> result = recruitService.detailRecruit(recruit_id);
		map.put("recruitInfo", result);
		map.put("createdBy",userService.getUser(result.get("created_by").toString()));
		map.put("applyed", applyService.showAll(recruit_id));
		return new ResponseEntity<Map>(map, HttpStatus.OK);
	}

	@ApiOperation(value = "유저가 작성한 모집 게시글의 정보를 반환한다.", response = Recruit.class)
	@GetMapping("/user/{user_email}")
	public ResponseEntity<Map> showRecruitByUser(@PathVariable String user_email) throws Exception {
		logger.debug("showAllByUser - 호출");
		Map<String, Object> map = new HashMap<>();
		List<Recruit> result = recruitService.showAllByUser(user_email);
		for(Recruit r : result) {
			map.put("recruitInfo", r);
			map.put("applyedInfo", applyService.showAll(r.getRecruit_id()));
		}
		return new ResponseEntity<Map>(map, HttpStatus.OK);
	}

	@ApiOperation(value = "category_id, recruit_title, recruit_content, people_num, start_date, end_date, created_by 를 넣어주세요. 새로운 자유 게시글 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = Recruit.class)
	@PostMapping
	public ResponseEntity<Recruit> writeRecruit(@RequestBody Recruit recruit) {
		recruitService.writeRecruit(recruit);
		return new ResponseEntity<Recruit>(recruit, HttpStatus.OK);
	}

	@ApiOperation(value = "recruit_id, category_id, recruit_title, recruit_content, people_num, start_date, end_date를 넣어주세요. 글번호에 해당하는 자유 게시글의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = Recruit.class)
	@PutMapping
	public ResponseEntity<Recruit> updateRecruit(@RequestBody Recruit recruit) {
		recruitService.updateRecruit(recruit);
		return new ResponseEntity<Recruit>(recruit, HttpStatus.OK);
	}

	@ApiOperation(value = "recruit_id를 넣어주세요. 글번호에 해당하는 모집 게시글을 마감합니다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping("/closed")
	public ResponseEntity<String> updateRecruitStatus(int recruit_id) {
		recruitService.changeRecruitStatus(recruit_id);
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}
	
	@ApiOperation(value = "글번호에 해당하는 모집 게시글의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{recruit_id}")
	public ResponseEntity<String> deleteRecruit(@PathVariable int recruit_id) {
		logger.debug("deleteRecruit - 호출");
		if (recruitService.deleteRecruit(recruit_id)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}