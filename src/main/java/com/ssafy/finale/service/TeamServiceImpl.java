package com.ssafy.finale.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.TeamDAO;
import com.ssafy.finale.dao.UserDao;
import com.ssafy.finale.dto.Team;
import com.ssafy.finale.dto.User;

@Service
public class TeamServiceImpl implements TeamService {

	@Autowired
	private TeamDAO teamDao;
	
	@Autowired
	private UserDao userDao;

	@Override
	public boolean writeTeam(Team team, String user_email) throws SQLException {
		User user = userDao.getUser(user_email);
		team.setTeamlist_id(user.getTeamlist_id());
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
	public List<Object> showTeambyUser(String user_email) {
		return teamDao.selectTeamByUser(user_email);
	}

	@Override
	public List<Object> detailTeamUsersByName(String team_name) {
		return teamDao.selectTeamUsersByName(team_name);
	}

	@Override
	public Team showTeamById(int team_id) {
		return teamDao.selectTeamById(team_id);
	}
}