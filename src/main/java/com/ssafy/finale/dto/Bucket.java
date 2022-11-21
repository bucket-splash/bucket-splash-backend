package com.ssafy.finale.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Bucket {

	private int bucket_id;
	private int category_id;
	private String bucket_title;
	private String bucket_content;
	private Date created_at;
	private String created_by;

}