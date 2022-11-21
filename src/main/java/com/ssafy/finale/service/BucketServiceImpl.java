package com.ssafy.finale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.BucketDAO;
import com.ssafy.finale.dto.Bucket;

@Service
public class BucketServiceImpl implements BucketService {

	@Autowired
	private BucketDAO bucketDao;

	@Override
	public List<Bucket> showAll() {
		return bucketDao.selectBucket();
	}

	@Override
	public Bucket detailBucket(int bucket_id) {
		return bucketDao.selectBucketByNo(bucket_id);
	}

	@Override
	public boolean writeBucket(Bucket bucket) {
		return bucketDao.insertBucket(bucket) == 1;
	}

	@Override
	public boolean updateBucket(Bucket bucket) {
		return bucketDao.updateBucket(bucket) == 1;
	}

	@Override
	public boolean deleteBucket(int bucket_id) {
		return bucketDao.deleteBucket(bucket_id) == 1;
	}

	@Override
	public List<Bucket> showAllByUser(String user_email) {
		return bucketDao.selectBucketByUser(user_email);
	}


}