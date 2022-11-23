package com.ssafy.finale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.BoardCommentDAO;
import com.ssafy.finale.dto.BoardComment;

@Service
public class BoardCommentServiceImpl implements BoardCommentService {

	@Autowired
	private BoardCommentDAO boardCommentDao;

	@Override
	public List<BoardComment> showAll(int board_id, int page) {
		return boardCommentDao.selectBoardComment(board_id, (page - 1) * 12);
	}

	@Override
	public boolean writeBoardComment(BoardComment boardComment) {
		boardCommentDao.insertBoardComment(boardComment);
		return boardCommentDao.increaseCommentsCount(boardComment.getBoard_id()) == 1;
	}

	@Override
	public boolean updateBoardComment(BoardComment boardComment) {
		return boardCommentDao.updateBoardComment(boardComment) == 1;
	}

	@Override
	public boolean deleteBoardComment(int board_comment_id) {
		BoardComment result = boardCommentDao.selectBoardCommentById(board_comment_id);
		boardCommentDao.decreaseCommentsCount(result.getBoard_id());
		return boardCommentDao.deleteBoardComment(board_comment_id) == 1;
	}

}