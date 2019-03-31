package com.itheima.crm.pojo;

import java.util.Date;

/**
 * 客户信息数据模型
 * @author Steven
 *
 */
public class Customer {
	private Long cust_id;
	private String cust_name;
	private Long cust_year;
	private String cust_source;
	private String cust_industry;
	private String cust_level;
	private String cust_ap;
	private String cust_part;
	private String cust_gra;
	private String cust_home;
	private Date cust_createtime;
	public Long getCust_id() {
		return cust_id;
	}
	public void setCust_id(Long cust_id) {
		this.cust_id = cust_id;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}

	public Long getCust_year() {
		return cust_year;
	}
	public void setCust_year(Long cust_year) {
		this.cust_year = cust_year;
	}
	public String getCust_source() {
		return cust_source;
	}
	public void setCust_source(String cust_source) {
		this.cust_source = cust_source;
	}
	public String getCust_industry() {
		return cust_industry;
	}
	public void setCust_industry(String cust_industry) {
		this.cust_industry = cust_industry;
	}
	public String getCust_level() {
		return cust_level;
	}
	public void setCust_level(String cust_level) {
		this.cust_level = cust_level;
	}
	public String getCust_ap() {
		return cust_ap;
	}
	public void setCust_ap(String cust_ap) {
		this.cust_ap = cust_ap;
	}
	public String getCust_part() {
		return cust_part;
	}
	public void setCust_part(String cust_part) {
		this.cust_part = cust_part;
	}
	public String getCust_gra() {
		return cust_gra;
	}
	public void setCust_gra(String cust_gra) {
		this.cust_gra = cust_gra;
	}
	public String getCust_home() {
		return cust_home;
	}
	public void setCust_home(String cust_home) {
		this.cust_home = cust_home;
	}
	public Date getCust_createtime() {
		return cust_createtime;
	}
	public void setCust_createtime(Date cust_createtime) {
		this.cust_createtime = cust_createtime;
	}

}
