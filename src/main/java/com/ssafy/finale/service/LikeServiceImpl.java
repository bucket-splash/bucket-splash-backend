package com.ssafy.finale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.LikeDAO;
import com.ssafy.finale.dto.Like;

@Service
public class LikeServiceImpl implements LikeService {

	@Autowired
	LikeDAO likeDao;

	@Override
	public Like showLikeInfo(int like_id) {
		return likeDao.getLikeInfo(like_id);
	}

	@Override
	public boolean checkIfUserLiked(String user_email, int board_id) {
		return likeDao.checkIfUserLiked(user_email, board_id) != null;
	}

	@Override
	public boolean writeLike(Like like) {
		likeDao.insertLike(like);
		Like result = likeDao.checkIfUserLiked(like.getUser_email(), like.getBoard_id());
		return likeDao.increaseLikesCount(result.getBoard_id()) == 1;
	}

	@Override
	public boolean deleteLike(int like_id) {
		Like result = likeDao.getLikeInfo(like_id);
		likeDao.decreaseLikesCount(result.getBoard_id());
		return likeDao.deleteLike(like_id) == 1;
	}

	@Override
	public Like showLikeInfoByEmail(String user_email, int board_id) {
		return likeDao.getLikeInfoByEmail(user_email, board_id);
	}

}
