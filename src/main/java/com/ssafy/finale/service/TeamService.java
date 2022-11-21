package com.ssafy.finale.service;

import java.util.List;

import com.ssafy.finale.dto.Team;
import com.ssafy.finale.dto.User;

public interface TeamService {
	
	public List<Object> showTeambyUser(int user_id); // 특정 유저의 팀 전체 조회

	public List<Object> detailTeamById(String team_name); // 팀 id로 해당 팀의 회원 리스트 조회 
	
	public boolean connectUserAndTeam(int user_id, Team team); // 특정 유저의 팀 리스트에 특정 팀 추가 

	public boolean writeTeam(Team team); // 팀 자체를 추가

	public boolean updateTeam(Team team); // 팀 정보 수정

	public boolean deleteTeam(int team_id); // 팀 삭제
}
