package com.ssafy.finale.service;

import com.ssafy.finale.dto.User;

public interface UserService {

	int insert(User user);
	User selectUser(String user_id) throws Exception;
	User loginUser(String user_id, String pwd) throws Exception; // 로그인
	
}
