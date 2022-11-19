package com.ssafy.finale.dao;

import java.sql.SQLException;
import java.util.Map;

import com.ssafy.finale.dto.User;

public interface UserDao {
	
	int insert(User user);
	User loginUser(String email, String password) throws SQLException;
	User getUser(String email) throws SQLException;
	Boolean updateUser(User user) throws SQLException;
	public void saveRefreshToken(Map<String, String> map) throws SQLException;
	public Object getRefreshToken(String email) throws SQLException;
	public void deleteRefreshToken(Map<String, String> map) throws SQLException;
}
