package com.ssafy.finale.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.finale.dao.BoardCommentDAO;
import com.ssafy.finale.dao.BoardDAO;
import com.ssafy.finale.dto.Board;
import com.ssafy.finale.dto.BoardComment;

@Service
public class BoardCommentServiceImpl implements BoardCommentService {

	@Autowired
	private BoardCommentDAO boardCommentDao;

	@Override
	public List<BoardComment> showAll(int board_comment_id, int page) {
		return boardCommentDao.selectBoardComment(board_comment_id, (page-1)*12);
	}

	@Override
	public boolean writeBoardComment(BoardComment boardComment) {
		return boardCommentDao.insertBoardComment(boardComment) == 1;
	}

	@Override
	public boolean updateBoardComment(BoardComment boardComment) {
		return boardCommentDao.updateBoardComment(boardComment) == 1;
	}

	@Override
	public boolean deleteBoardComment(int board_comment_id) {
		return boardCommentDao.deleteBoardComment(board_comment_id) == 1;
	}

}