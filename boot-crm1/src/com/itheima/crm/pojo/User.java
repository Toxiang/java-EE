package com.itheima.crm.pojo;

/**
 * @author Administrator
 *  用户
 */
public class User {
   
	private String userName; 
	private String password;
	public User() {
		super();
	}
	public User(String userId, String userName, String password, int isStore, String vipNum, int score) {
		super();
		this.userName = userName;
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
