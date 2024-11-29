package jang.com.doc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jang.com.doc.dao.UserDao;
import jang.com.doc.model.User;


@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public User getUser(String userId) {
		return userDao.getUser(userId);
	}

	@Override
	public List<User> getUserList() {
		return userDao.getUserList();
	}

	@Override
	public int insertUser(User user) {
		return userDao.insert(user);
	}

}
