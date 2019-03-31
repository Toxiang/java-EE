package com.itheima.crm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itheima.crm.pojo.BaseDict;
import com.itheima.crm.pojo.Customer;
import com.itheima.crm.pojo.QueryVo;
import com.itheima.crm.pojo.User;
import com.itheima.crm.service.impl.UserServicelmpl;
import com.itheima.crm.utils.Page;

/**
 * @author Administrator
 *
 */
@Controller  // 被spring托管
@RequestMapping("customer") // 请求路径
public class UserController {
	
	
	// @Autowired  将service 注入 相当于  new UserService
	@Autowired
	private UserServicelmpl userService;
	
	/**
	 * 跳转到登录页面的方法
	 * @return
	 */
	@RequestMapping(value="/login2")
	public String toLoginController(){
		
		// 返回的字符串  视图
		return "login";
	}
  
	@RequestMapping(value="/adddata")
	public String add(){
		
		// 返回的字符串  视图
		return "add";
	}
	/**
	 * 登录方法
	 * 第一种获取值的方式 方法的参数列表  写要获取表单里的 name 属性的值
	 * 
	 * Model 携带参数的接口
	 * @return
	 */
	@RequestMapping("list3")
    public String loginController(User user,Model model,HttpSession session){
		User u = userService.queryUserByNameAndPwd(user);
		
		if(u == null){
			// loginError 对应前台的 ${loginError}
			model.addAttribute("loginError", "用户名或密码错误");
			return "login";
		}else{
			// 将用户保存在整个会话中
			
			return "customer";
		}
		
	}
	
	//---------------------------访问主体的四个页面------------------------------

}
