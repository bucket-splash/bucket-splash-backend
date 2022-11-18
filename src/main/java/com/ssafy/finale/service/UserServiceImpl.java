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
		if (user.getUser_id() == null || user.getPwd() == null)
			return null;
//		return sqlSession.getMapper(UserDao.class).loginUser(user.getUser_id(), user.getPwd());
		return userDao.loginUser(user.getUser_id(), user.getPwd());
	}

	@Override
	public User getUser(String user_id) throws Exception {
		return userDao.getUser(user_id);
	}

	@Override
	public void saveRefreshToken(String user_id, String refreshToken) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("token", refreshToken);
//		sqlSession.getMapper(UserDao.class).saveRefreshToken(map);
		userDao.saveRefreshToken(map);
	}

	@Override
	public Object getRefreshToken(String user_id) throws Exception {
//		return sqlSession.getMapper(UserDao.class).getRefreshToken(userid);
		return userDao.getRefreshToken(user_id);
	}

	@Override
	public void deleRefreshToken(String user_id) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("token", null);
//		sqlSession.getMapper(UserDao.class).deleteRefreshToken(map);
		userDao.deleteRefreshToken(map);
	}

}
