package com.luoyunfan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luoyunfan.dao.IStudentDao;
import com.luoyunfan.entity.Student;
import com.luoyunfan.service.IStudentService;
@Service
public class StudentService implements IStudentService{
	 @Autowired
	 IStudentDao studentDao = null;
	 
	 //------------------------------查询单个学生------------------------------------//
	 public Student findLogin(Student stu) {
		 Student student = studentDao.findOne(stu);
		 if(student!=null&&student.getStuPwd().equals(stu.getStuPwd()))
		 {
			 return student;
		 }else {
			 return null;
		 }
	 }
	 public Student findLogin1(Student stu) {
		 Student student = studentDao.findOne(stu);
		 if(student!=null)
		 {
			 return student;
		 }else {
			 return null;
		 }
	 }
	 //-------------------------学生注册---------------------------------------//
	 public boolean registStu(Student stu) {
		 System.out.println("---"+stu.getStuZh()+","+stu.getStuPwd()+","+stu.getStuName()+","+stu.getStuPhone());
		 boolean flag = studentDao.registStu(stu);
		 System.out.println(flag);
		 System.out.println("service:注册");
		 return flag;
	 }
	 //修改学生信息
	@Override
	public Student updateInfo(Student stu) {
		studentDao.updateInfo(stu);
		return null;
	}
	 
}
