package com.ssafy.finale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.finale.dto.Team;
import com.ssafy.finale.dto.User;

@Mapper
public interface TeamDAO {
	public List<Object> selectTeamByUser(String user_email); // 특정 유저의 팀 전체 조회

	public List<Object> selectTeamUsersByName(String team_name); // 특정 팀의 유저 상세 조회
	
	public Team selectTeamById(int team_id); // 특정 팀의 정보 조회 
	
	public int insertTeam(Team team); // 팀 자체를 추가 

	public int updateTeam(Team team); // 팀 정보 수정 

	public int deleteTeam(int team_id); // 삭제
}
