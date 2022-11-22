package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Comment;

@Mapper
public interface CommentDAO {
	public List<Comment> selectComment(int recruit_id, int page); // 특정 모집 게시글의 댓글 전체 조회

	public int insertComment(Comment comment); // 추가

	public int updateComment(Comment comment); // 수정

	public int deleteComment(int comment_id); // 삭제
}