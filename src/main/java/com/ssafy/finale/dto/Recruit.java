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
public class Recruit {

	private int recruit_id;
	private int category_id;
	private String recruit_title;
	private String recruit_content;
	private String people_num;
	private String start_date;
	private String end_date;
	private Date created_at;
	private String created_by;

}
