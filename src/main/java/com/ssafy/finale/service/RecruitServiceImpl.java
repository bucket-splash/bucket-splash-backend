package com.ssafy.finale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.finale.dao.BoardDAO;
import com.ssafy.finale.dao.RecruitDAO;
import com.ssafy.finale.dto.Board;
import com.ssafy.finale.dto.Recruit;

@Service
public class RecruitServiceImpl implements RecruitService {

	@Autowired
	private RecruitDAO recruitDao;

	@Override
	public List<Recruit> showAll() {
		return recruitDao.selectRecruit();
	}

	@Override
	public List<Recruit> showAllByUser(String user_email) {
		return recruitDao.selectRecruitByUser(user_email);
	}

	@Override
	public List<Recruit> detailRecruit(int recruit_id) {
		return recruitDao.selectRecruitByNo(recruit_id);
	}

	@Override
	public boolean writeRecruit(Recruit recruit) {
		return recruitDao.insertRecruit(recruit) == 1;
	}

	@Override
	public boolean updateRecruit(Recruit recruit) {
		return recruitDao.updateRecruit(recruit) == 1;
	}

	@Override
	public boolean deleteRecruit(int recruit_id) {
		return recruitDao.deleteRecruit(recruit_id) == 1;
	}

}