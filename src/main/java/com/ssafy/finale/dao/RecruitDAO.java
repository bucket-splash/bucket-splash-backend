package com.ssafy.finale.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Recruit;

@Mapper
public interface RecruitDAO {
	public List<Map<String, Object>> selectRecruit(); // 전체 조회

	public List<Recruit> selectRecruitByUser(String user_email); // 특정 유저가 쓴 모집게시판 글 조회

	public Map<String, Object> selectRecruitByNo(int recruit_id); // 카테고리와 함께 상세 조회

	public int insertRecruit(Recruit recruit); // 추가

	public int updateRecruit(Recruit recruit); // 수정

	public int deleteRecruit(int recruit_id); // 삭제
	
	public int updateRecruitStatus(int recruit_id); // 마감으로 수정 
}