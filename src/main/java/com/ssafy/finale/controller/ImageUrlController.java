package com.ssafy.finale.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.finale.dto.ImageUrl;
import com.ssafy.finale.service.ImageUrlService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/imageurl")
public class ImageUrlController {

	private static final Logger logger = LoggerFactory.getLogger(ImageUrlController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private ImageUrlService imageUrlService;

	@ApiOperation(value = "특정 게시글에 새로운 이미지를 입력(추가)한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> writeImageUrl(@RequestBody ImageUrl image) {
		logger.debug("writeImageUrl - 호출");
		if (imageUrlService.writeImageUrl(image)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "이미지 번호에 해당하는 이미지 url을 입력받은 url로 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping("{image_id}")
	public ResponseEntity<String> updateImageUrl(@RequestBody ImageUrl image) {
		logger.debug("updateImageUrl - 호출");
		if (imageUrlService.updateImageUrl(image)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "이미지 번호에 해당하는 이미지의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{image_id}")
	public ResponseEntity<String> deleteImageUrl(@PathVariable int image_id) {
		logger.debug("deleteImageUrl - 호출");
		if (imageUrlService.deleteImageUrl(image_id)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}