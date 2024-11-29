package jang.com.doc.dao;

import java.util.List;

import jang.com.doc.model.User;

public interface UserDao {
	User getUser(String userId);
	List<User> getUserList();
	int insert(User user);
}
