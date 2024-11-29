package jang.com.doc.service;

import java.util.List;

import jang.com.doc.model.User;

public interface UserService {
	User getUser(String userId);
	List<User> getUserList();
	int insertUser(User user);
}
