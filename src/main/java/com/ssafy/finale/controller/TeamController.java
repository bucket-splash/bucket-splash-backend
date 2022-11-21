package com.ssafy.finale.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.finale.dto.Team;
import com.ssafy.finale.dto.User;
import com.ssafy.finale.service.TeamService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/team")
public class TeamController {

	private static final Logger logger = LoggerFactory.getLogger(TeamController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private TeamService teamService;

	@ApiOperation(value = "특정 유저의 모든 팀 정보를 반환한다.", response = List.class)
	@GetMapping("{user_id}")
	public ResponseEntity<List<Object>> retrieveTeam(@PathVariable int user_id) throws Exception {
		logger.debug("showTeambyUser - 호출");
		return new ResponseEntity<List<Object>>(teamService.showTeambyUser(user_id), HttpStatus.OK);
	}

	@ApiOperation(value = "팀 name에 해당하는 팀의 정보를 반환한다.", response = List.class)
	@GetMapping("/find_team/{team_name}")
	public ResponseEntity<List<Object>> detailTeam(@PathVariable String team_name) {
		logger.debug("detailTeamById - 호출");
		return new ResponseEntity<List<Object>>(teamService.detailTeamById(team_name), HttpStatus.OK);
	}

	@ApiOperation(value = "user_id, team_name, team_image를 입력해주세요. 해당 사용자를 특정 팀으로 추가한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping("/add_user")
	public ResponseEntity<String> connectUserAndTeam(@RequestBody int user_id, Team team) {
		logger.debug("connectUserAndTeam - 호출");
		if (teamService.connectUserAndTeam(user_id, team)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "아직 안함 - team id에 해당하는 팀의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping("{team_id}")
	public ResponseEntity<String> updateTeam(@RequestBody Team team) {
		logger.debug("updateTeam - 호출");
		if (teamService.updateTeam(team)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "아직 안함 - team id에 해당하는 팀의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{team_id}")
	public ResponseEntity<String> deleteTeam(@PathVariable int team_id) {
		logger.debug("deleteTeam - 호출");
		if (teamService.deleteTeam(team_id)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}