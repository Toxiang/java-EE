package com.itheima.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itheima.crm.pojo.BaseDict;
import com.itheima.crm.pojo.Customer;
import com.itheima.crm.pojo.QueryVo;
import com.itheima.crm.service.BaseDictService;
import com.itheima.crm.service.CustomerService;
import com.itheima.crm.utils.Page;

/**
 * 客户信息请求请求处理
 * 
 * @author Steven
 *
 */
@Controller
@RequestMapping("customer")
public class CustomerController {

	@Autowired
	private BaseDictService dictService;
	@Autowired
	private CustomerService customerService;

	@Value("${customer_from_type}")
	private String customer_from_type;
	
	@Value("${customer_industry_type}")
	private String customer_industry_type;
	
	@Value("${customer_level_type}")
	private String customer_level_type;
	
	@RequestMapping("list4")
	public String register() {
		return "register";
	}

	@RequestMapping("list")
	public String list(Model model,QueryVo vo) {

		// 查询来源
		List<BaseDict> fromType = dictService.getBaseDictByCode(customer_from_type);
		// 查询行业
		List<BaseDict> industryType = dictService.getBaseDictByCode(customer_industry_type);
		// 查询级别
		List<BaseDict> levelType = dictService.getBaseDictByCode(customer_level_type);

		// 设置数据模型返回
		model.addAttribute("fromType", fromType);
		model.addAttribute("industryType", industryType);
		model.addAttribute("levelType", levelType);
		
		//跟据查询条件分页查询用户列表
		Page<Customer> page = customerService.getCustomerByQueryVo(vo);
		
		//设置分页数返回
		model.addAttribute("page", page);
		
		//返回查询条件
		model.addAttribute("vo", vo);

		return "customer";
	}
	
	
	
	@RequestMapping("pain")
	public String pain(Model model,QueryVo vo) {

		// 查询来源
		List<BaseDict> fromType = dictService.getBaseDictByCode(customer_from_type);
		// 查询行业
		List<BaseDict> industryType = dictService.getBaseDictByCode(customer_industry_type);
		// 查询级别
		List<BaseDict> levelType = dictService.getBaseDictByCode(customer_level_type);

		// 设置数据模型返回
		model.addAttribute("fromType", fromType);
		model.addAttribute("industryType", industryType);
		model.addAttribute("levelType", levelType);
		
		//跟据查询条件分页查询用户列表
		Page<Customer> page = customerService.getCustomerByQueryVo(vo);
		
		//设置分页数返回
		model.addAttribute("page", page);
		
		//返回查询条件
		model.addAttribute("vo", vo);

		return "edit";
	}
	
	@RequestMapping("exc")
	public String exc(Model model,QueryVo vo) {

		// 查询来源
		List<BaseDict> fromType = dictService.getBaseDictByCode(customer_from_type);
		// 查询行业
		List<BaseDict> industryType = dictService.getBaseDictByCode(customer_industry_type);
		// 查询级别
		List<BaseDict> levelType = dictService.getBaseDictByCode(customer_level_type);

		// 设置数据模型返回
		model.addAttribute("fromType", fromType);
		model.addAttribute("industryType", industryType);
		model.addAttribute("levelType", levelType);
		
		//跟据查询条件分页查询用户列表
		Page<Customer> page = customerService.getCustomerByQueryVo(vo);
		
		//设置分页数返回
		model.addAttribute("page", page);
		
		//返回查询条件
		model.addAttribute("vo", vo);

		return "exc";
	}
	
	@RequestMapping("edit")
	@ResponseBody
	public Customer edit(Integer id){
		Customer customer = customerService.getCustomerById(id);
		return customer;
	}
	
	@RequestMapping("see")
	@ResponseBody
	public Customer see(Integer id){
		Customer customer = customerService.getCustomerById(id);
		return customer;
	}
	
	@RequestMapping("update")
	@ResponseBody
	public String update(Customer customer){
		String msg = "1";
		try {
			customerService.updateCustomer(customer);
			msg = "0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	@RequestMapping("add")
	@ResponseBody
	public String add(Customer customer){
		String msg = "1";
		try {
			customerService.addCustomer(customer);
			msg = "0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public String delete(Integer id){
		String msg = "1";
		try {
			customerService.deleteCustomer(id);
			msg = "0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}

	@RequestMapping("myTag")
	public String myTage() {
		return "myTag";
	}
}
