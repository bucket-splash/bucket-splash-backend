package com.ssafy.finale.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class User {

	private int user_id;
	private String email; // 아이디 역할 
	private int teamlist_id;
	private String nickname; // 닉네임 
	private String password; // 비밀번호 
	private String bio;	// 자기소개 한 줄 
	private String profile_image; // 프로필 사진 
	
	public User(int user_id, String email, int teamlist_id, String nickname, String password, String bio,
			String profile_image) {
		super();
		this.user_id = user_id;
		this.email = email;
		this.teamlist_id = teamlist_id;
		this.nickname = nickname;
		this.password = password;
		this.bio = bio;
		this.profile_image = profile_image;
	}

}
