package com.ssafy.finale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.TeamDAO;
import com.ssafy.finale.dto.Team;
import com.ssafy.finale.dto.User;

@Service
public class TeamServiceImpl implements TeamService {

	@Autowired
	private TeamDAO teamDao;

	@Override
	public boolean writeTeam(Team team) {
		return teamDao.insertTeam(team) == 1;
	}

	@Override
	public boolean updateTeam(Team team) {
		return teamDao.updateTeam(team) == 1;
	}

	@Override
	public boolean deleteTeam(int team_id) {
		return teamDao.deleteTeam(team_id) == 1;
	}

	@Override
	public List<Object> showTeambyUser(int user_id) {
		return teamDao.selectTeamByUser(user_id);
	}

	@Override
	public boolean connectUserAndTeam(int user_id, Team team) {
		return teamDao.insertUserToTeam(user_id, team) == 1;
	}

	@Override
	public List<Object> detailTeamById(String team_name) {
		return teamDao.selectTeamBId(team_name);
	}
}