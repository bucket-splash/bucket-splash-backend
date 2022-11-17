package com.ssafy.finale.dao;

import java.sql.SQLException;

import com.ssafy.finale.dto.User;

public interface UserDao {
	
	int insert(User user);
	User loginUser(String user_id, String pwd) throws SQLException;
	User selectUser(String user_id) throws SQLException;
}
