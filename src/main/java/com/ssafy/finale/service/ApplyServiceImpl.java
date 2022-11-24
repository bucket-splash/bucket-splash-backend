package com.ssafy.finale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.ApplyDAO;
import com.ssafy.finale.dto.Apply;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	private ApplyDAO applyDao;

	@Override
	public List<Apply> showAll(int recruit_id) { // 특정 모집게시글에 지원한 유저들 목록 반환
		return applyDao.selectApply(recruit_id);
	}

	@Override
	public boolean writeApply(Apply apply) { // 지원하기
		if (applyDao.selectApplyByUser(apply.getRecruit_id(), apply.getCreated_by()) != null) {
			return false;
		}
		applyDao.insertApply(apply);
		return applyDao.increaseApplysCount(apply.getRecruit_id()) == 1;
	}

	@Override
	public boolean deleteApply(int comment_id) { // 지원 삭제
		return applyDao.deleteApply(comment_id) == 1;
	}

	@Override
	public boolean checkIfApplyed(int recruit_id, String user_email) {
		return applyDao.selectApplyByUser(recruit_id, user_email) != null;
	}

}