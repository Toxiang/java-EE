package com.itheima.crm.mapper;

import com.itheima.crm.pojo.User;

/**
 * @author Administrator
 *
 */
public interface UserMapper {
	
	/**
	 * 根据用户  查询 用户
	 * @param user
	 * @return
	 */
	public abstract User queryUserByNameAndPwd(User user);


}
