package com.luo.bean;

public class Employee {
	private String username;
	private String password;
	private Gender gender = Gender.MAN;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public Employee(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public Employee() {
		// TODO Auto-generated constructor stub
	}
	
	

}
