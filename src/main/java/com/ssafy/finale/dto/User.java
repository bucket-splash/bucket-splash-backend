package com.ssafy.finale.dto;

public class User {

	private int user_id;
	private String email; // 아이디 역할 
	private int team_id;
	private String nickname; // 닉네임 
	private String password; // 비밀번호 
	private String bio;	// 자기소개 한 줄 
	private String profile_image; // 프로필 사진 
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(int user_id, String email, int team_id, String nickname, String password, String bio,
			String profile_image) {
		super();
		this.user_id = user_id;
		this.email = email;
		this.team_id = team_id;
		this.nickname = nickname;
		this.password = password;
		this.bio = bio;
		this.profile_image = profile_image;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTeam_id() {
		return team_id;
	}

	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public String getProfile_image() {
		return profile_image;
	}

	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", email=" + email + ", team_id=" + team_id + ", nickname=" + nickname
				+ ", password=" + password + ", bio=" + bio + ", profile_image=" + profile_image + "]";
	}
}
