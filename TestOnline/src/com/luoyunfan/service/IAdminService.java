package com.luoyunfan.service;

import java.util.List;
import java.util.Map;

import com.luoyunfan.entity.Admin;
import com.luoyunfan.entity.Paper;
import com.luoyunfan.entity.PassTest;
import com.luoyunfan.entity.Student;
import com.luoyunfan.entity.TestPlan;
import com.luoyunfan.entity.Timu;
 

public interface IAdminService {
	public boolean findAdmin(Admin admin);
	public List<Student> stuSearchAll();
	public List<Student> serachByCondition(Map<String,Object>  condition);
	public int delStu(String stuZh);

	public List<Timu> timuSearchAll();
	
	public  boolean addTimu(Timu timu);
	public int delTimu(String id);
	public List<Timu> serachTimuByCondition(String id);
	
	//查找试卷名是否存在

	public Paper findPaper(String paperName);
	public boolean addPaper(String paperName,String timuId);
	public List<Paper> paperSearchName();
	
	public int delPaper(String paperName);
	
	//查找多个题目
	public List<Timu> searchById(String [] ids);
	//查询测试
	public TestPlan findTestPlan(String stuZh,String paperName);
	//添加测试
	public boolean addTestPlan(String stuZh,String paperName,String time1);
	//查询所有测试信息
	public List<TestPlan> searchAllTest();
	//删除
	public int delTest(String stuZh,String paperName);
	
	//修改题目
	public int ChangeTimu(Timu timu);
	
	//向表中存储考试过的信息
	public void addHistoryInfo(String stuZh,String paperName,String score,String timeStr1);
	
	//查询学生考试记录
	public List<PassTest> searchPastTest(String stuZh);
	
	public void changeTime(TestPlan aa);
}
