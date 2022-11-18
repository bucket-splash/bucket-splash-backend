package com.ssafy.finale.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.UserDao;
import com.ssafy.finale.dto.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private SqlSession sqlSession;

	private UserDao userDao;

	@Autowired
	public void setUserRepo(UserDao userRepo) {
		this.userDao = userRepo;
	}

	public UserDao getUserRepo() {
		return this.userDao;
	}

	@Override
	public int insert(User user) {
		return userDao.insert(user);
	}

	@Override
	public User loginUser(User user) throws Exception {
		if (user.getEmail() == null || user.getPassword() == null)
			return null;
		return userDao.loginUser(user.getEmail(), user.getPassword());
	}

	@Override
	public User getUser(String email) throws Exception {
		return userDao.getUser(email);
	}

	@Override
	public void saveRefreshToken(String user_id, String refreshToken) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("token", refreshToken);
		userDao.saveRefreshToken(map);
	}

	@Override
	public Object getRefreshToken(String email) throws Exception {
		return userDao.getRefreshToken(email);
	}

	@Override
	public void deleRefreshToken(String email) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("token", null);
		userDao.deleteRefreshToken(map);
	}

	@Override
	public Boolean updateUser(User user) throws Exception {
		return userDao.updateUser(user);
	}

}
