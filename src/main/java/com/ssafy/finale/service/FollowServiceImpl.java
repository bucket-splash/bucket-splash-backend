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
	public List<Follow> showFollowedByUser(String user_email) {
		return followDao.selectFollowedByUser(user_email);
	}

	@Override
	public List<Follow> showFollowingByUser(String user_email) {
		return followDao.selectFollowingByUser(user_email);
	}

	@Override
	public boolean writeFollow(Follow follow) {
		followDao.increaseFollowed(follow.getFollowed_email());
		followDao.increaseFollowing(follow.getFollowing_email());
		return followDao.insertFollow(follow) == 1;
	}

	@Override
	public boolean deleteFollow(int follow_id) {
		Follow result = followDao.getFollowInfo(follow_id);
		followDao.decreaseFollowed(result.getFollowed_email());
		followDao.decreaseFollowing(result.getFollowing_email());
		return followDao.deleteFollow(follow_id) == 1;
	}

}
