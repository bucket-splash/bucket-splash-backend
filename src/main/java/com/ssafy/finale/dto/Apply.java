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
public class Apply {

	private int apply_id;
	private int recruit_id;
	private String apply_content;
	private String created_by;
	private Date created_at;
	
}
