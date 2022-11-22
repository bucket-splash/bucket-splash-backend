package com.ssafy.finale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.CommentDAO;
import com.ssafy.finale.dto.Comment;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDAO commentDao;

	@Override
	public List<Comment> showAll(int recruit_id, int page) {
		return commentDao.selectComment(recruit_id, (page - 1) * 12);
	}

	@Override
	public boolean writeComment(Comment comment) {
		return commentDao.insertComment(comment) == 1;
	}

	@Override
	public boolean updateComment(Comment comment) {
		return commentDao.updateComment(comment) == 1;
	}

	@Override
	public boolean deleteComment(int comment_id) {
		return commentDao.deleteComment(comment_id) == 1;
	}

}