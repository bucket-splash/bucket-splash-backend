package com.ssafy.finale.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Board {
	private int board_id;
	private String board_title;
	private String board_content;
	private Date created_at;
	private String image_url;
	private String created_by; // user_email 들어감 
	private String board_image;	
	private int likes_count;
	private int comments_count;
}