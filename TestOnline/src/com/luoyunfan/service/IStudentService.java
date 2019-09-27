package com.luoyunfan.service;

import com.luoyunfan.entity.Student;

public interface IStudentService {
	 public Student findLogin(Student stu);
	 public boolean registStu(Student stu);
	 public Student findLogin1(Student stu);
	 public Student updateInfo(Student stu);
}
