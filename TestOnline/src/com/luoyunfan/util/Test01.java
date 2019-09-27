package com.luoyunfan.util;

 

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

 
import com.luoyunfan.entity.Student;
 
public class Test01 {}
//	private Logger logger = LogManager.getLogger(Test01.class);
//
//	public static void main(String[] args) {
//		String resource = resource = "com/luoyunfan/conf/mybatis-config.xml";
//		InputStream inputStream;
//		try {
//			// Resources 工具类，它包含一些实用方法，可使从 classpath 或其他位置加载资源文件更加容易。
//			inputStream = Resources.getResourceAsStream(resource);
//		} catch (IOException e) {
//			e.printStackTrace();
//			throw new RuntimeException();
//		}
//		// SqlSessionFactoryBuilder创建SqlSessionFactory,SqlSessionFactory 一旦被创建就应该在应用的运行期间一直存在，没有任何理由对它进行清除或重建。
//		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//		
//		// 每个线程都应该有它自己的 SqlSession 实例。SqlSession 的实例不是线程安全的，因此是不能被共享的
//		SqlSession session = sqlSessionFactory.openSession();
//		try {
//			// User user = (User) session.selectOne("com.demo.mybatis.step01.bo.UserMapper.selectUserByID", 1);
//			// 以前的写法，需要类型转换
//			StudentMapper mapper = session.getMapper(StudentMapper.class);

			// 映射器是创建用来绑定映射语句的接口
			
			//添加
//			int i = mapper.addStu(new Student("2","1","1","1","1","1"));
//			System.out.println(i);
			
			//删除
//			int i = mapper.deleteStu("1");
//			System.out.println(i);
			
			//修改
//			int i = mapper.updateStu(new Student("2","2","2","2","2","2"));
//			
//			System.out.println(i);
			
			//查询
//			int i = mapper.addStu(new Student("3","1","1","1","1","1"));
//			Student stu = mapper.selectStuById("2");
//			System.out.println(stu);
//			System.out.println("---------------------");
//			List<Student> list = mapper.selectAllStu();
//			for(Student  stud : list) {
//				System.out.println(stud);
//			}
//			StudentInfo stu  = mapper.selectStuInfo(2);
//			System.out.println(stu);
			//多表查询
//			List<Student> list = mapper.selectStuAndInfo() ;
//			for(Student stu : list) {
//				System.out.println(stu);
//			}
//			list =mapper.selectStuAndRoles() ;
//			for(Student stu : list) {
//				System.out.println(stu);
//			}
			//根据条件动态查询
//			Map<String,Object> contition = new HashMap<>();
//			contition.put("stuZh", "a");
//			
//			List<Student>list = mapper.findByContition(contition);
//			for(Student stu : list) {
//				System.out.println(stu);
//			}
			//根据id查询
//			List<Integer> id = new ArrayList<Integer>();
//			id.add(2);
//			id.add(3);
//			List<Student>list = mapper.findById(id);
//			for(Student stu : list) {
//				System.out.println(stu);
//			}
//			session.commit();
//
//		} finally {
//			session.close();
//		}
//	}

//}
