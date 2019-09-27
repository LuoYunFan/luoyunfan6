package com.luoyunfan.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.luoyunfan.entity.Student;

 
public interface IStudentDao  {
 
	public Student findOne(Student stu);
	public boolean registStu(Student stu);
	public List<Student> stuSearchAll();
	public List<Student> searchByCondition(Map<String,Object>  condition);
	public int delStu(String stuZh);
	
	public int updateInfo(Student stu);
}
