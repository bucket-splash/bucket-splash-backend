package com.ssafy.finale.service;

import java.util.List;

import com.ssafy.finale.dto.Comment;

public interface CommentService {
	public List<Comment> showAll(int recruit_id, int page); // 특정 자유 게시글의 댓글 전체 조회

	public boolean writeComment(Comment comment); // 게시글 추가

	public boolean updateComment(Comment comment); // 게시글 수정

	public boolean deleteComment(int comment_id); // 게시글 삭제
}
