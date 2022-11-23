package com.ssafy.finale.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Board;


@Mapper
public interface BoardDAO {
	public List<Map<String, Object>> selectBoard(int page); // 전체 조회
	
	public List<Map<String, Object>> selectBoardOrderByLikes(int page); // 좋아요 많은 순으로 전체 조회 
	
	public List<Map<String, Object>> selectBoardFollowing(String user_email); // 사용자가 팔로우한 사람들의 전체 자유 게시글 조회 
	
	public List<Map<String, Object>> selectBoardFollowingOrderByLikes(String user_email); // 좋아요 많은 순으로 사용자가 팔로우한 사람들의 전체 자유 게시글 조회 
	
	public List<Board> selectBoardByUser(String user_email); // 특정 유저가 쓴 자유게시판 글 조회 

	public Map<String, Object> selectBoardByNo(int board_id); // 상세 조회

	public int insertBoard(Board board); // 추가

	public int updateBoard(Board board); // 수정

	public int deleteBoard(int board_id); // 삭제
}