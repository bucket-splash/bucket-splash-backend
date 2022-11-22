package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Follow;

@Mapper
public interface FollowDAO {

	public int insertFollow(Follow follow); // 팔로우 
	
	public int deleteFollow(int follow_id); // 팔로우 해제 
	
	public List<Follow> selectFollowedByUser(int user_id); // 해당 유저를 팔로우하고 있는 유저들 리스트 찾기 
	
	public List<Follow> selectFollowingByUser(int user_id); // 해당 유저가 팔로우하고 있는 유저들 리스트 찾기 
	
}
