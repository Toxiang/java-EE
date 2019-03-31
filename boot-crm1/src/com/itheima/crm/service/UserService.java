package com.itheima.crm.service;

import com.itheima.crm.pojo.User;

public interface UserService {

	User queryUserByNameAndPwd(User user);
	
}
