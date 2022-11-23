package com.ssafy.finale.service;

import com.ssafy.finale.dto.Like;

public interface LikeService {
	public Like showLikeInfo(int like_id); // 좋아요 넘버로 정보 얻기
	
	public Like showLikeInfoByEmail(String user_email, int board_id); // 사용자 이메일과 보드넘버로 좋아요 정보 얻기 

	public boolean checkIfUserLiked(String user_email, int board_id); // 해당 자유 게시글을 특정 사용자가 좋아요 눌렀는지 확인하기

	public boolean writeLike(Like like); // 좋아요 추가

	public boolean deleteLike(int like_id); // 좋아요 해제
}
