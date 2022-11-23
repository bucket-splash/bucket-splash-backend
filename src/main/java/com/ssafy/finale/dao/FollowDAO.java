package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Follow;

@Mapper
public interface FollowDAO {

	public int insertFollow(Follow follow); // 팔로우 
	
	public int deleteFollow(int follow_id); // 팔로우 해제 
	
	public Follow getFollowInfo(int follow_id); // 팔로우 넘버로 정보 얻기 
	
	public List<Follow> selectFollowedByUser(String user_email); // 해당 유저를 팔로우하고 있는 유저들 리스트 찾기 
	
	public List<Follow> selectFollowingByUser(String user_email); // 해당 유저가 팔로우하고 있는 유저들 리스트 찾기 
	
	public int increaseFollowed(String user_email); // 팔로우 당한 사람 followed_count 1더하기 해주기 
	
	public int increaseFollowing(String user_email); // 팔로우한 사람 following_count 1더하기 해주기
	
	public int decreaseFollowed(String user_email); // 언팔로우 당한 사람 followed_count 1빼기 해주기 
	
	public int decreaseFollowing(String user_email); // 언팔로우한 사람 following_count 1빼기 해주기
	
	public Follow checkFollow(String following_email, String followed_email); // following이 followed를 팔로우했는지 여부 체크 
	
	public Follow getFollowInfoByEmail(String following_email, String followed_email); // 사용자 이메일들로 팔로우 정보 얻기 
	
}
