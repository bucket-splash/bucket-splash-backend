package com.ssafy.finale.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Board;
import com.ssafy.finale.dto.BoardComment;


@Mapper
public interface BoardCommentDAO {
	public List<BoardComment> selectBoardComment(int board_id, int page); // 특정 자유 게시글의 댓글 전체 조회

	public int insertBoardComment(BoardComment boardComment); // 추가

	public int updateBoardComment(BoardComment boardComment); // 수정

	public int deleteBoardComment(int board_comment_id); // 삭제
}