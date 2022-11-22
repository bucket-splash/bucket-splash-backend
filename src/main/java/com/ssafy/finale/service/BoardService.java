package com.ssafy.finale.service;

import java.util.List;
import java.util.Map;

import com.ssafy.finale.dto.Board;

public interface BoardService {
	public List<Map<String, Object>> showAll(int page); // 전체 조회 
	public List<Board> showAllByUser(String user_email); // 유저의 글 전체 조회
	public Map<String, Object> detailBoard(int board_id); // 상세 조회 
	public boolean writeBoard(Board board); // 게시글 추가 
	public boolean updateBoard(Board board); // 게시글 수정 
	public boolean deleteBoard(int board_id); // 게시글 삭제 
}
