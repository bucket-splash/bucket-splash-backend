package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Comment;

@Mapper
public interface CommentDAO {
	public List<Comment> selectComment(int recruit_id, int page); // 특정 모집 게시글의 댓글 전체 조회
	
	public Comment selectCommentById(int comment_id);

	public int insertComment(Comment comment); // 추가

	public int updateComment(Comment comment); // 수정

	public int deleteComment(int comment_id); // 삭제

	public int increaseCommentsCount(int recruit_id); // 댓글이 달린 모집 게시글의 comments_count 1더하기 해주기

	public int decreaseCommentsCount(int recruit_id); // 댓글이 삭제된 모집 게시글의 comments_count 1빼기 해주기
}