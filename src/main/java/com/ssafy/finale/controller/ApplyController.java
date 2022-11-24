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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.finale.dto.Apply;
import com.ssafy.finale.service.ApplyService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/apply/")
public class ApplyController {

	private static final Logger logger = LoggerFactory.getLogger(ApplyController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private ApplyService applyService;

	@ApiOperation(value = "특정 모집 게시글에 지원한 지원자들을 전체 조회한다.", response = Map.class)
	@GetMapping
	public ResponseEntity<List<Apply>> showApply(int recruit_id) {
		logger.debug("showApply - 호출");
		return new ResponseEntity<List<Apply>>(applyService.showAll(recruit_id), HttpStatus.OK);
	}

	@ApiOperation(value = "특정 사용자가 특정 모집 게시글에 지원을 했는지 확인한다.", response = Boolean.class)
	@GetMapping("/check")
	public ResponseEntity<Boolean> checkIfApplyed(int recruit_id, String user_email) {
		logger.debug("checkIfApplyed - 호출");
		return new ResponseEntity<Boolean>(applyService.checkIfApplyed(recruit_id, user_email), HttpStatus.OK);
	}
	
	@ApiOperation(value = "recruit_id, apply_content, created_by 를 넣어주세요. 새로운 지원 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다. 이미 지원한 경우에도 'fail", response = Apply.class)
	@PostMapping
	public ResponseEntity<Apply> writeApply(@RequestBody Apply apply) {
		logger.debug("writeApply - 호출");
		applyService.writeApply(apply);
		return new ResponseEntity<Apply>(apply, HttpStatus.OK);
	}

	@ApiOperation(value = "지원 번호에 해당하는 지원 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{apply_id}")
	public ResponseEntity<String> deleteApply(@PathVariable int apply_id) {
		logger.debug("deleteApply - 호출");
		if (applyService.deleteApply(apply_id)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}