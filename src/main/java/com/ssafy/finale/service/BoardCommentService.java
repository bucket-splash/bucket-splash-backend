package com.ssafy.finale.service;

import java.util.List;
import java.util.Map;

import com.ssafy.finale.dto.Board;
import com.ssafy.finale.dto.BoardComment;

public interface BoardCommentService {
	public List<BoardComment> showAll(int board_comment_id, int page); // 특정 자유 게시글의 댓글 전체 조회
	public boolean writeBoardComment(BoardComment boardComment); // 게시글 추가 
	public boolean updateBoardComment(BoardComment boardComment); // 게시글 수정 
	public boolean deleteBoardComment(int board_comment_id); // 게시글 삭제 
}
