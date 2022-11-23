package com.ssafy.finale.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Like;

@Mapper
public interface LikeDAO {

	public int insertLike(Like like); // 좋아요

	public int deleteLike(int like_id); // 좋아요 해제

	public Like getLikeInfo(int like_id); // 좋아요 넘버로 정보 얻기
	
	public Like getLikeInfoByEmail(String user_email, int board_id); // 사용자 이메일과 보드넘버로 좋아요 정보 얻기 
	
	public Like checkIfUserLiked(String user_email, int board_id); // 해당 자유 게시글을 특정 사용자가 좋아요 눌렀는지 확인하기

	public int increaseLikesCount(int board_id); // 좋아요 눌러진 자유 게시글의 likes_count 1더하기 해주기

	public int decreaseLikesCount(int board_id); // 좋아요 해제당한 자유 게시글의 likes_count 1빼기 해주기

}
