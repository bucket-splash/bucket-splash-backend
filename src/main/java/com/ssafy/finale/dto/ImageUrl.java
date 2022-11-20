package com.ssafy.finale.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ImageUrl {
	private int image_id;
	private int board_id;
	private String image_url;
}
