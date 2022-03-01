package com.campers.user.model.service;

import com.campers.user.model.vo.User;

public interface UserService {
	
	User login(String id, String pwd);

	int save(User user);

	boolean validate(String userId);

	User findById(String id);

	int delete(String userId);

	int updatePwd(User loginUser, String userPwd);
}
