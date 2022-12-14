package com.ssafy.finale.service;

import java.util.List;

import com.ssafy.finale.dto.Follow;

public interface FollowService {
	public List<Follow> showFollowedByUser(String user_email); // 해당 유저를 팔로우하고 있는 유저들 리스트 찾기

	public List<Follow> showFollowingByUser(String user_email); // 해당 유저가 팔로우하고 있는 유저들 리스트 찾기

	public boolean writeFollow(Follow follow); // 팔로우 추가

	public boolean deleteFollow(int follow_id); // 팔로우 해제
	
	public boolean checkFollow(String following_email, String followed_email); // following이 followed를 팔로우했는지 여부 체크
	
	public Follow getFollowInfoByEmail(String following_email, String followed_email); // follow 정보 찾기 
}
