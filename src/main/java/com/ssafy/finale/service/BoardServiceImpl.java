package com.ssafy.finale.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.finale.dao.BoardDAO;
import com.ssafy.finale.dto.Board;

@Service
public class BoardServiceImpl implements BoardService {
	
    @Autowired
	private BoardDAO boardDao;

    @Override
	public List<Map<String, Object>> showAll(int page) {
		return boardDao.selectBoard((page-1)*12);
	}
    
  	@Override
	public boolean writeBoard(Board board) {
		return boardDao.insertBoard(board) == 1;
	}

	@Override
	public Map<String, Object> detailBoard(int board_id) {
		return boardDao.selectBoardByNo(board_id);
	}

	@Override
	@Transactional
	public boolean updateBoard(Board board) {
		return boardDao.updateBoard(board) == 1;
	}

	@Override
	@Transactional
	public boolean deleteBoard(int board_id) {
		return boardDao.deleteBoard(board_id) == 1;
	}

	@Override
	public List<Board> showAllByUser(String user_email) {
		return boardDao.selectBoardByUser(user_email);
	}
}