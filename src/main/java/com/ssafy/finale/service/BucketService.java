package com.ssafy.finale.service;

import java.util.List;

import com.ssafy.finale.dto.Board;
import com.ssafy.finale.dto.Bucket;

public interface BucketService {
	public List<Bucket> showAll(); // 전체 조회 
	public Bucket detailBucket(int bucket_id); // 상세 조회 
	public boolean writeBucket(Bucket bucket); // 버킷 추가 
	public boolean updateBucket(Bucket bucket); // 버킷 수정 
	public boolean deleteBucket(int bucket_id); // 버킷 삭제 
}
