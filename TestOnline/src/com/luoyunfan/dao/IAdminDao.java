package com.luoyunfan.dao;
 
import com.luoyunfan.entity.Admin;
import com.luoyunfan.entity.Student;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

 
public interface IAdminDao   {
 
	 
	public Admin findAdmin(Admin admin);
	//-------------------------------------------------------------------------------//
	
}
