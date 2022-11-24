package com.ssafy.finale.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.finale.dto.Team;
import com.ssafy.finale.dto.User;

public interface TeamService {
	
	public List<Object> showTeambyUser(String user_email); // 특정 유저의 팀 전체 조회

	public List<Object> detailTeamUsersByName(String team_name); // 팀 id로 해당 팀의 회원 리스트 조회 
	
	public Team showTeamById(int team_id); // 팀 id로 팀 정보 찾기 

	public boolean writeTeam(Team team, String user_email) throws SQLException; // 특정 유저에 팀 추가

	public boolean updateTeam(Team team); // 팀 정보 수정

	public boolean deleteTeam(int team_id); // 팀 삭제
}
