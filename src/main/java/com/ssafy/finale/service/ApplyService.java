package com.ssafy.finale.service;

import java.util.List;

import com.ssafy.finale.dto.Apply;

public interface ApplyService {
	public List<Apply> showAll(int recruit_id); // 특정 모집 게시글의 지원자 전체 조회
	
	public boolean checkIfApplyed(int recruit_id, String user_email); // 특정 모집 게시글에 특정 지원자가 지원을 했는지 여부 반환 

	public boolean writeApply(Apply apply); // 지원 추가

	public boolean deleteApply(int apply_id); // 지원 삭제
}
