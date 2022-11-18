package com.ssafy.finale.dao;

import java.sql.SQLException;
import java.util.Map;

import com.ssafy.finale.dto.User;

public interface UserDao {
	
	int insert(User user);
	User loginUser(String user_id, String pwd) throws SQLException;
	User getUser(String user_id) throws SQLException;
	public void saveRefreshToken(Map<String, String> map) throws SQLException;
	public Object getRefreshToken(String userid) throws SQLException;
	public void deleteRefreshToken(Map<String, String> map) throws SQLException;
}
