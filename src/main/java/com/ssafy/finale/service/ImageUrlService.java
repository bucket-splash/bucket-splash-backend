package com.ssafy.finale.service;

import com.ssafy.finale.dto.ImageUrl;

public interface ImageUrlService {
	public boolean writeImageUrl(ImageUrl image); // 게시글 추가 
	public boolean updateImageUrl(ImageUrl image); // 게시글 수정 
	public boolean deleteImageUrl(int image_id); // 게시글 삭제 
}
