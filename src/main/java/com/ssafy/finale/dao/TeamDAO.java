package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Team;
import com.ssafy.finale.dto.User;

@Mapper
public interface TeamDAO {
	public List<Object> selectTeamByUser(int user_id); // 특정 유저의 팀 전체 조회

	public List<Object> selectTeamBId(String team_name); // 상세 조회

	public int insertUserToTeam(int user_id, Team team); // 특정 유저의 팀 리스트에 특정 팀 추가 
	
	public int insertTeam(Team team); // 팀 자체를 추가 

	public int updateTeam(Team team); // 팀 정보 수정 

	public int deleteTeam(int team_id); // 삭제
}
