package com.ssafy.finale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.FollowDAO;
import com.ssafy.finale.dto.Follow;

@Service
public class FollowServiceImpl implements FollowService {

	@Autowired
	FollowDAO followDao;

	@Override
	public List<Follow> showFollowedByUser(int user_id) {
		return followDao.selectFollowedByUser(user_id);
	}

	@Override
	public List<Follow> showFollowingByUser(int user_id) {
		return followDao.selectFollowingByUser(user_id);
	}

	@Override
	public boolean writeFollow(Follow follow) {
		return followDao.insertFollow(follow) == 1;
	}

	@Override
	public boolean deleteFollow(int follow_id) {
		return followDao.deleteFollow(follow_id) == 1;
	}

}
