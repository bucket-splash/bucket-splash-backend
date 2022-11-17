package com.ssafy.finale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.finale.dao.UserDao;
import com.ssafy.finale.dto.User;

@Service
public class UserServiceImpl implements UserService {
	
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
	public User loginUser(String user_id, String pwd) throws Exception {
		return userDao.loginUser(user_id, pwd);
	}

	@Override
	public User selectUser(String user_id) throws Exception {
		return userDao.selectUser(user_id);
	}
	

}
