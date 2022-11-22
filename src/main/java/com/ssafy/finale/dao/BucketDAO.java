package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Bucket;

@Mapper
public interface BucketDAO {
	public List<Bucket> selectBucket(); // 전체 조회
	
	public Bucket selectBucketByNo(int bucket_id); // 상세 조회
	
	public List<Bucket> selectBucketByUser(String user_email); // 상세 조회

	public int insertBucket(Bucket bucket); // 추가

	public int updateBucket(Bucket bucket); // 수정

	public int deleteBucket(int bucket_id); // 삭제
	
	public int checkBucket(Bucket bucket); // 특정 버킷 체크여부 변경 
}