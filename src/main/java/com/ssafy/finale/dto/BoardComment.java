package com.ssafy.finale.dto;

import java.util.Date;

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
public class BoardComment {

	private int board_comment_id;
	private int board_id;
	private String board_comment_content;
	private String created_by;
	private Date created_at;
	
}
