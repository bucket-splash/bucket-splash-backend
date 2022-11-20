package com.ssafy.finale.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.ImageUrl;
@Mapper
public interface ImageUrlDAO {
	public int insertImageUrl(ImageUrl image); // 추가 
	public int updateImageUrl(ImageUrl image); // 수정 
	public int deleteImageUrl(int image_id); // 삭제 
}