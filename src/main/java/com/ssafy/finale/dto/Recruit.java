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
	private Date start_date; // 버킷 시작할 날짜 
	private Date end_date; // 버킷 끝나는 날짜 
	private Date created_at;
	private String created_by;
	private int applys_count;
	private int deposit;
	private boolean closed;

}
