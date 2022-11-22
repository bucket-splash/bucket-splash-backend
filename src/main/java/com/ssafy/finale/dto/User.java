package com.ssafy.finale.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class User {

	private int user_id;
	private String email; // 아이디 역할
	private int teamlist_id;
	private String nickname; // 닉네임
	private String password; // 비밀번호
	private String bio; // 자기소개 한 줄
	private String profile_image; // 프로필 사진
	private int following_count;
	private int followed_count;
}
