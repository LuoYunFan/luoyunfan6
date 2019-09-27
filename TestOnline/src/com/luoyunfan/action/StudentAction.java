package com.luoyunfan.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.luoyunfan.entity.Student;
import com.luoyunfan.service.impl.StudentService;

public class StudentAction extends BaseAction{
	String username;
	String password;
	String name;
	String phone;
	String return_date;
	 
	StudentService studentService;
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String stuZh;
	
	public void setStuZh(String stuZh) {
		this.stuZh = stuZh;
	}
	//查找学生
	public String stuFind() {
		
		Student student = new Student();
		student.setStuZh(stuZh);
		Student stu  =  studentService.findLogin1(student);
		if(stu!=null) {
			session.put("stuInfo", stu);	 
		}
		else {
		}
		return "success";
	}
	//--------------------学生登录------------------------//
	public String stuLogin() {
		Student student = new Student();
		student.setStuZh(username);
		student.setStuPwd(password);
		Student stu  =  studentService.findLogin(student);
		
		
		if(stu!=null) {
			session.put("stulogin", stu);
			return_date="success";
		}
		else {
			return_date="fail";
		}
		return "success";
	}
	
	//------------------学生注册---------------------------//
	public String stuRegist() {
		System.out.println("action:注册");
		Student student = new Student();
		System.out.println(username+","+password+","+name+","+phone);
		student.setStuZh(username);;
		student.setStuPwd(password);
		student.setStuName(name);
		student.setStuPhone(phone);
		//先查询注册过没有
		Student stu  =  studentService.findLogin1(student);
		//如果注册过
		if(stu!=null) {
			System.out.println("注册过");
			return_date="fail";
		}
		else {
			System.out.println("未注册");
			boolean flag = studentService.registStu(student);
			if(flag) {
				 
				return_date="success";
			}
			else {
				return_date="fail";
			}
		}
		
		return "success";
	}
	 
	public String stuPwd;
	public String stuPhone;
	
	public void setStuPwd(String stuPwd) {
		this.stuPwd = stuPwd;
	}
	public void setStuPhone(String stuPhone) {
		this.stuPhone = stuPhone;
	}
	//修改信息
	public String changeInfo() {
		
		Student stu = new Student();
		stu.setStuZh(stuZh);
	 
		//查询之前的密码和现在的密码是否一样
		stu = studentService.findLogin1(stu);
		String password = stu.getStuPwd();
		//如果一样，记录一下。
		if(password.equals(stuPwd)) {
			return_date = "pwdOK";
		}else {
			session.remove("stulogin");
			return_date = "pwdNo";
		}
		//进行更新
		stu.setStuZh(stuZh);
		stu.setStuPwd(stuPwd);
		stu.setStuPhone(stuPhone);
		studentService.updateInfo(stu);
		System.out.println("更新成功");
		return "success";
	}
	
	public String getReturn_date() {
		return return_date;
	}
	
}
