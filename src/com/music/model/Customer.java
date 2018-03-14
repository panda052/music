package com.music.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Customer entity. @author MyEclipse Persistence Tools
 */

public class Customer implements java.io.Serializable {

	// Fields

	private Integer customerid;
	private String sex;
	private String bab;
	private String realname;
	private String password;
	private Integer songsnum;
	private String filepath;
	private String birthday;
	private String country;
	private Set orders = new HashSet(0);
	private Set orders_1 = new HashSet(0);
	private Set orders_2 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Customer() {
	}

	/** minimal constructor */
	public Customer(String sex, String realname, String password) {
		this.sex = sex;
		this.realname = realname;
		this.password = password;
	}

	/** full constructor */
	public Customer(String sex, String bab, String realname, String password,
			Integer songsnum, String filepath, String birthday, String country,
			Set orders, Set orders_1, Set orders_2) {
		this.sex = sex;
		this.bab = bab;
		this.realname = realname;
		this.password = password;
		this.songsnum = songsnum;
		this.filepath = filepath;
		this.birthday = birthday;
		this.country = country;
		this.orders = orders;
		this.orders_1 = orders_1;
		this.orders_2 = orders_2;
	}

	// Property accessors

	public Integer getCustomerid() {
		return this.customerid;
	}

	public void setCustomerid(Integer customerid) {
		this.customerid = customerid;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBab() {
		return this.bab;
	}

	public void setBab(String bab) {
		this.bab = bab;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getSongsnum() {
		return this.songsnum;
	}

	public void setSongsnum(Integer songsnum) {
		this.songsnum = songsnum;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

	public Set getOrders_1() {
		return this.orders_1;
	}

	public void setOrders_1(Set orders_1) {
		this.orders_1 = orders_1;
	}

	public Set getOrders_2() {
		return this.orders_2;
	}

	public void setOrders_2(Set orders_2) {
		this.orders_2 = orders_2;
	}

}