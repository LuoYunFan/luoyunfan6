package com.luoyunfan.util;

 
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.luoyunfan.service.impl.StudentService;
 

public class TestSpring {
	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(
				new String[] {"com/luoyunfan/conf/applicationContextaop.xml"});
//		
//		bean构造
//		StudentService studentService = (StudentService) applicationContext.getBean("studentService1");
//		
//		StudentService studentService2 = (StudentService) applicationContext.getBean("studentService2");
//		
//		StudentService studentService3 = (StudentService) applicationContext.getBean("studentService3");
//		
//		StudentService studentService4 = (StudentService) applicationContext.getBean("studentService4");
////-------------------------------------------------------------------------------------------------------		
//		IStudentService studentService = (StudentService) applicationContext.getBean("studentService");
//		studentService.create(0);
		//基于注解的配置
//		IStudentService studentService = (StudentService) applicationContext.getBean("StudentService");
//		studentService.create();
		//代理
//		IStudentService studentService = (IStudentService) applicationContext.getBean("StudentServiceProxy");
//		studentService.create();
		//aop
//		IStudentService studentService = (IStudentService) applicationContext.getBean("studentService");
//		studentService.create();
	}
}
