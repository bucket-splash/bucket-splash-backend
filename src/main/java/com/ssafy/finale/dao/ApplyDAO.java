package com.ssafy.finale.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Apply;

@Mapper
public interface ApplyDAO {
	public List<Apply> selectApply(int recruit_id); // 특정 모집 게시글의 지원자들 전체 조회
	
	public Map<String, Object> selectApplyByUser(int recruit_id, String user_email); // 특정 사용자가 특정 모집 게시글에 지원했는지 여부 조회 
	
	public Apply selectApplyById(int apply_id);

	public int insertApply(Apply apply); // 추가

	public int deleteApply(int apply_id); // 삭제

	public int increaseApplysCount(int recruit_id); // 지원이 달린 모집 게시글의 applys_count 1더하기 해주기

	public int decreaseApplysCount(int recruit_id); // 지원이 삭제된 모집 게시글의 applys_count 1빼기 해주기
}