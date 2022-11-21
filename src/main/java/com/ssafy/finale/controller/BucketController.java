package com.ssafy.finale.controller;

import java.util.List;

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
import com.ssafy.finale.dto.Bucket;
import com.ssafy.finale.service.BoardService;
import com.ssafy.finale.service.BucketService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/bucket")
public class BucketController {

	private static final Logger logger = LoggerFactory.getLogger(BucketController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private BucketService bucketService;

	@ApiOperation(value = "모든 버킷의 정보를 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<Bucket>> retrieveBoard() throws Exception {
		logger.debug("showAll - 호출");
		return new ResponseEntity<List<Bucket>>(bucketService.showAll(), HttpStatus.OK);
	}
	
	@ApiOperation(value = "모든 버킷의 정보를 반환한다.", response = List.class)
	@GetMapping("/user")
	public ResponseEntity<List<Bucket>> datailBoardByUser(@PathVariable String user_email) throws Exception {
		logger.debug("showAllByUser - 호출");
		return new ResponseEntity<List<Bucket>>(bucketService.showAllByUser(user_email), HttpStatus.OK);
	}
	
	@ApiOperation(value = "버킷 id에 해당하는 버킷의 정보를 반환한다.", response = Board.class)
	@GetMapping("{bucket_id}")
	public ResponseEntity<Bucket> detailBucket(@PathVariable int bucket_id) {
		logger.debug("detailBucket - 호출");
		return new ResponseEntity<Bucket>(bucketService.detailBucket(bucket_id), HttpStatus.OK);
	}

	@ApiOperation(value = "category_id, bucket_title, bucket_content, created_by를 넣어주세요. 새로운 버킷 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> writeBucket(@RequestBody Bucket bucket) {
		logger.debug("writeBucket - 호출");
		if (bucketService.writeBucket(bucket)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "bucket_id, category_id, bucket_title, bucket_content를 넣어주세요. 버킷 id에 해당하는 버킷의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping("{bucket_id}")
	public ResponseEntity<String> updateBucket(@RequestBody Bucket bucket) {
		logger.debug("updateBucket - 호출");
		if (bucketService.updateBucket(bucket)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "버킷 id에 해당하는 버킷의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{bucket_id}")
	public ResponseEntity<String> deleteBucket(@PathVariable int bucket_id) {
		logger.debug("deleteBucket - 호출");
		if (bucketService.deleteBucket(bucket_id)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}