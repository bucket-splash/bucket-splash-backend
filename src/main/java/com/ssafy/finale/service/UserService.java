package com.ssafy.finale.service;

import com.ssafy.finale.dto.User;

public interface UserService {

	public int insert(User user);
	public User getUser(String email) throws Exception;
	public User loginUser(User user) throws Exception; // 로그인
	public void saveRefreshToken(String email, String refreshToken) throws Exception;
	public Object getRefreshToken(String email) throws Exception;
	public void deleRefreshToken(String email) throws Exception;
	
}
