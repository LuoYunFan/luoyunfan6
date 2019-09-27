package com.luoyunfan.entity;

import java.util.List;

public class Student {
	String stuZh;
	String stuPwd;
	String stuName;
    String stuPhone;
	 
	public Student() {
		super();
	}
	
	public String getStuZh() {
		return stuZh;
	}

	public void setStuZh(String stuZh) {
		this.stuZh = stuZh;
	}
	
	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getStuPwd() {
		return stuPwd;
	}

	public void setStuPwd(String stuPwd) {
		this.stuPwd = stuPwd;
	}

	public String getStuPhone() {
		return stuPhone;
	}

	public void setStuPhone(String stuPhone) {
		this.stuPhone = stuPhone;
	}

	@Override
	public String toString() {
		return "Student [stuZh=" + stuZh + ", stuPwd=" + stuPwd + ", stuName=" + stuName + ", stuPhone=" + stuPhone
				+ "]";
	}
	
	
}
