package com.luoyunfan.dao;

import java.util.List;

import com.luoyunfan.entity.TestPlan;

public interface ITestDao {
	public int addTestPlan(String stuZh,String paperName,String time1);
	public TestPlan findTestPlan(String stuZh,String paperName);
	public List<TestPlan> searchAllTest();
	public int delTest(String stuZh,String paperName);
	
	public int changeTime(TestPlan aa);
}
