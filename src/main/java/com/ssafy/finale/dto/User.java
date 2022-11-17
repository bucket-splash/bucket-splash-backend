package com.ssafy.finale.dto;

import java.util.Date;

public class User {

	private int user_no;
	private String user_id; // 아이디
	private String pwd; // 비밀번호
	private String name; // 이름
	private Date join_date;// 가입 날짜
	
	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	@Override
	public String toString() {
		return "User [user_no=" + user_no + ", user_id=" + user_id + ", pwd=" + pwd + ", name=" + name + ", join_date="
				+ join_date + "]";
	}

	// 기본 생성자
	public User() {
	}

	public User(int user_no, String user_id, String pwd, String name, Date join_date) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.pwd = pwd;
		this.name = name;
		this.join_date = join_date;
	}

}
