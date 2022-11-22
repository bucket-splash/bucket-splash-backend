package com.ssafy.finale.service;

import java.util.List;

import com.ssafy.finale.dto.Follow;

public interface FollowService {
	public List<Follow> showFollowedByUser(int user_id); // 해당 유저를 팔로우하고 있는 유저들 리스트 찾기

	public List<Follow> showFollowingByUser(int user_id); // 해당 유저가 팔로우하고 있는 유저들 리스트 찾기

	public boolean writeFollow(Follow follow); // 팔로우 추가

	public boolean deleteFollow(int follow_id); // 팔로우 해제
}
