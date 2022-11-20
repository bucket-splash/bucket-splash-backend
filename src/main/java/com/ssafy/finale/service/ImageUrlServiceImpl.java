package com.ssafy.finale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.ImageUrlDAO;
import com.ssafy.finale.dto.ImageUrl;

@Service
public class ImageUrlServiceImpl implements ImageUrlService{

	@Autowired
	ImageUrlDAO imageUrlDao;
	
	@Override
	public boolean writeImageUrl(ImageUrl image) {
		return imageUrlDao.insertImageUrl(image)==1;
	}

	@Override
	public boolean updateImageUrl(ImageUrl image) {
		return imageUrlDao.updateImageUrl(image)==1;
	}

	@Override
	public boolean deleteImageUrl(int image_id) {
		return imageUrlDao.deleteImageUrl(image_id)==1;
	}

}
