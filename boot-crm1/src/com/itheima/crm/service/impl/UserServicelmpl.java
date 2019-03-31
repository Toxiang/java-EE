package com.itheima.crm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.crm.mapper.UserMapper;
import com.itheima.crm.pojo.User;

/**
 * @author Administrator
 *
 */
@Service
public class UserServicelmpl {
	
	@Autowired
	private UserMapper userMapper;
	
	public User queryUserByNameAndPwd(User user){
		return userMapper.queryUserByNameAndPwd(user);
	}

}

