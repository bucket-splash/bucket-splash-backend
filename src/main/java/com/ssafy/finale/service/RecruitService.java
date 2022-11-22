package com.ssafy.finale.service;

import java.util.List;

import com.ssafy.finale.dto.Recruit;

public interface RecruitService {
	public List<Recruit> showAll(); // 전체 조회 
	public List<Recruit> showAllByUser(String user_email); // 유저의 글 전체 조회
	public List<Recruit> detailRecruit(int recruit_id); // 상세 조회 
	public boolean writeRecruit(Recruit recruit); // 게시글 추가 
	public boolean updateRecruit(Recruit recruit); // 게시글 수정 
	public boolean deleteRecruit(int recruit_id); // 게시글 삭제 
}
