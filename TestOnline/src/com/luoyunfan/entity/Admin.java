package com.luoyunfan.entity;

public class Admin {
	private String userName;
	private String passWord;
	
	public Admin( ) {
		super();
		 
	}
	public Admin(String userName, String passWord) {
		super();
		this.userName = userName;
		this.passWord = passWord;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
}
