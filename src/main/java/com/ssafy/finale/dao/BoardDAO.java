package com.ssafy.finale.dao;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Board;


@Mapper
public interface BoardDAO {
	public List<Board> selectBoard(); // 전체 조회
	
	public List<Board> selectBoardByUser(String user_email); // 특정 유저가 쓴 자유게시판 글 조회 

	public List<Board> selectBoardByNo(int board_id); // 상세 조회

	public int insertBoard(Board board); // 추가

	public int updateBoard(Board board); // 수정

	public int deleteBoard(int board_id); // 삭제
}