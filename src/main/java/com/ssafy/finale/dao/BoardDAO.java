package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Board;
@Mapper
public interface BoardDAO {
	public List<Board> selectBoard();
	public Board selectBoardByNo(int no);
	public int insertBoard(Board board);
	public int updateBoard(Board board);
	public int deleteBoard(int no);
}