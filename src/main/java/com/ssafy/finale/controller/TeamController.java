package com.ssafy.finale.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.finale.dto.Recruit;
import com.ssafy.finale.dto.Team;
import com.ssafy.finale.service.RecruitService;
import com.ssafy.finale.service.TeamService;

import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.parameters.RequestBody;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/team")
public class TeamController {

	private static final Logger logger = LoggerFactory.getLogger(TeamController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private TeamService teamService;

	@Autowired
	private RecruitService recruitService;

	@ApiOperation(value = "특정 유저의 모든 팀 정보를 반환한다.", response = List.class)
	@GetMapping("/find/user")
	public ResponseEntity<List<Object>> retrieveTeam(String user_email) throws Exception {
		logger.debug("showTeambyUser - 호출");
		return new ResponseEntity<List<Object>>(teamService.showTeambyUser(user_email), HttpStatus.OK);
	}

	@ApiOperation(value = "팀 id에 해당하는 팀의 정보 및 팀의 사용자들을 반환한다.", response = List.class)
	@GetMapping("/find")
	public ResponseEntity<List<Object>> detailTeamUsers(String team_name) {
		logger.debug("detailTeamUsersByName - 호출");
		return new ResponseEntity<List<Object>>(teamService.detailTeamUsersByName(team_name), HttpStatus.OK);
	}

	@ApiOperation(value = "recruit_id와 해당 팀에 속하려는 유저들의 이메일 리스트를 입력해주세요. 해당 사용자들을 특정 팀으로 추가합니다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환합니다.", response = Team.class)
	@PostMapping
	public ResponseEntity<Team> insertTeam(int recruit_id, String user_email) throws SQLException {
		logger.debug("insertTeam - 호출");
		Map<String, Object> result = recruitService.detailRecruit(recruit_id);
		Team team = new Team(0, result.get("recruit_title").toString(), result.get("recruit_content").toString(), 0);
		teamService.writeTeam(team, user_email);
		return new ResponseEntity<Team>(team, HttpStatus.OK);
	}

//	@ApiOperation(value = "아직 안함 - team id에 해당하는 팀의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
//	@PutMapping("{team_id}")
//	public ResponseEntity<String> updateTeam(@RequestBody Team team) {
//		logger.debug("updateTeam - 호출");
//		if (teamService.updateTeam(team)) {
//			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
//		}
//		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
//	}
//
//	@ApiOperation(value = "아직 안함 - team id에 해당하는 팀의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
//	@DeleteMapping("{team_id}")
//	public ResponseEntity<String> deleteTeam(@PathVariable int team_id) {
//		logger.debug("deleteTeam - 호출");
//		if (teamService.deleteTeam(team_id)) {
//			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
//		}
//		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
//	}
	public class UserList {
		List<String> user_email;

		public UserList() {
			// TODO Auto-generated constructor stub
		}

		public List<String> getUser_email() {
			return user_email;
		}
	}
}