package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.BoardComment;


@Mapper
public interface BoardCommentDAO {
	public List<BoardComment> selectBoardComment(int board_id, int page); // 특정 자유 게시글의 댓글 전체 조회
	
	public BoardComment selectBoardCommentById(int board_comment_id); // 자유 게시글 넘버로 자유 게시글 정보 조회

	public int insertBoardComment(BoardComment boardComment); // 추가

	public int updateBoardComment(BoardComment boardComment); // 수정

	public int deleteBoardComment(int board_comment_id); // 삭제

	public int increaseCommentsCount(int board_id); // 댓글이 달린 자유 게시글의 comments_count 1더하기 해주기

	public int decreaseCommentsCount(int board_id); // 댓글이 삭제된 자유 게시글의 comments_count 1빼기 해주기

}