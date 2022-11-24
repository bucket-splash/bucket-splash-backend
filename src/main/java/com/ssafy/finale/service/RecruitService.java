package com.ssafy.finale.service;

import java.util.List;
import java.util.Map;

import com.ssafy.finale.dto.Recruit;

public interface RecruitService {
	public List<Map<String, Object>> showAll(); // 전체 조회 
	public List<Recruit> showAllByUser(String user_email); // 유저의 글 전체 조회
	public Map<String, Object> detailRecruit(int recruit_id); // 상세 조회 
	public boolean writeRecruit(Recruit recruit); // 게시글 추가 
	public boolean updateRecruit(Recruit recruit); // 게시글 수정 
	public boolean deleteRecruit(int recruit_id); // 게시글 삭제 
	public boolean changeRecruitStatus(int recruit_id); // 마감 여부 수정 
}
