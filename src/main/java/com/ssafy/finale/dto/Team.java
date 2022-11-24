package com.ssafy.finale.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Team {
	private int team_id;
	private String team_name;
	private String team_content;
	private int teamlist_id;
}
