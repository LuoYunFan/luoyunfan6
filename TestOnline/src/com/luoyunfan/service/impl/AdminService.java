package com.luoyunfan.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luoyunfan.dao.IAdminDao;
import com.luoyunfan.dao.IPaperDao;
import com.luoyunfan.dao.IPassTestDao;
import com.luoyunfan.dao.IStudentDao;
import com.luoyunfan.dao.ITestDao;
import com.luoyunfan.dao.ITimuDao;
import com.luoyunfan.entity.Admin;
import com.luoyunfan.entity.Paper;
import com.luoyunfan.entity.PassTest;
import com.luoyunfan.entity.Student;
import com.luoyunfan.entity.TestPlan;
import com.luoyunfan.entity.Timu;
import com.luoyunfan.service.IAdminService;
@Service
public class AdminService implements IAdminService{
	//---------------------------------------------------------------------//
	@Autowired
	 IAdminDao admindao = null;
	@Autowired
	IStudentDao studentDao = null;
	@Autowired
	ITimuDao timuDao = null;
	@Autowired
	IPaperDao paperDao = null;
	@Autowired
	ITestDao testDao = null;
	@Autowired
	IPassTestDao passTestDao = null;
	//----------------------查询管理员信息------------------------------// 
	public boolean findAdmin(Admin admin) {
		System.out.println("findadmin");
		Admin admin1 = admindao.findAdmin(admin);
		System.out.println(admin1.getUserName());
		if(admin1!=null&&admin1.getPassWord().equals(admin.getPassWord())) {
			return true;
		}
		else {
			return false;
		}
	//-----------------------------------------------------------------//
		
		
		
	}
	//查询所有学生
	@Override
	public List<Student> stuSearchAll() {
		List<Student> list = studentDao.stuSearchAll();
		return list;
	}
	//按条件查询学生
	@Override
	public List<Student> serachByCondition(Map<String,Object>  condition) {
		List<Student> student = studentDao.searchByCondition(condition);
		return student;
	}
	//删除学生
	@Override
	public int delStu(String stuZh) {
		studentDao.delStu(stuZh);
		return 0;
	}
	//查询题库题目
	public List<Timu> timuSearchAll(){
		List<Timu> timu = timuDao.timuSearchAll();
		return timu;
	}
	//添加题目
	@Override
	public boolean addTimu(Timu timu) {
		boolean flag = timuDao.addTimu(timu);
		return flag;
	}
	//根据id查询题目
	@Override
	public List<Timu> serachTimuByCondition(String id) {
		List<Timu> timu = timuDao.serachTimuByCondition(id);
		return timu;
	}
	//根据id删除题目
	@Override
	public int delTimu(String id) {
		timuDao.delTimu(id);
		return 0;
	}
	//发现试卷是否存在
	@Override
	public Paper findPaper(String paperName) {
		Paper paper = paperDao.findPaper(paperName);
		return paper;
	}
	//添加试卷
	@Override
	public boolean addPaper(String paperName, String timuId) {
		 
		//查一下之前有没有
		System.out.println("Service:生成试卷"+paperName+","+timuId);
		Paper paper = paperDao.findPaper(paperName);
		System.out.println(paper);
		if(paper!=null) {
			return false;
		}else {
			System.out.println(paperName+"!!!!"+timuId);
			paperDao.addPaper(paperName, timuId);
			
			return true;
		}
	}
	//查询所有试卷的信息。
	@Override
	public List<Paper> paperSearchName() {
		List<Paper> list = paperDao.paperSearchName();
		System.out.println("service查询试卷名结束");
		return list;
	}
	//试卷的删除操作
	@Override
	public int delPaper(String paperName) {
		paperDao.delPaper(paperName);
		return 0;
	}
	//查找多个题目
	@Override
	public List<Timu> searchById(String[] ids) {
		
		//定义数据库查询参数
		List<String> list = new ArrayList<String>();
		for(int i=0;i<ids.length;i++) {
			if(!ids[i].equals("")) {
				//不是空的话就像条件查询中插入此id
				list.add(ids[i]);
				System.out.println("向数据库查找的id:"+ids[i]);
			}
		}
		List<Timu> list1 = timuDao.searchById(list);
		return list1;
	}
	
	//查询单个测试
	@Override
	public TestPlan findTestPlan(String stuZh, String paperName) {
		TestPlan testPlan = testDao.findTestPlan(stuZh, paperName);
		return testPlan;
	};
	//添加测试
	@Override
	public boolean addTestPlan(String stuZh, String paperName,String time1) {
		//首先查询测试有没有添加过
		
		 
		TestPlan testPlan = testDao.findTestPlan(stuZh, paperName );
		//如果之前已经添加过
		if(testPlan!=null) {
			return false;
		}
		else {
			testDao.addTestPlan(stuZh,paperName,time1);
			return true;
		}
 
	}
	//查询所有的考试
	@Override
	public List<TestPlan> searchAllTest() {
		List<TestPlan> list = testDao.searchAllTest();
		return list;
	}
	//删除考试信息
	@Override
	public int delTest(String stuZh, String paperName) {
		testDao.delTest(stuZh,paperName);
		return 0;
	}
	
	//修改题目信息
	@Override
	public int ChangeTimu(Timu timu) {
		timuDao.ChangeTimu(timu);
		return 0;
	}
	
	//添加考过试卷的信息
	@Override
	public void addHistoryInfo(String stuZh, String paperName, String score, String timeStr1) {
		 passTestDao.addHistoryInfo(stuZh,paperName, score, timeStr1);
	}
	
	@Override
	public List<PassTest> searchPastTest(String stuZh) {
		List<PassTest> list = passTestDao.findStuTest(stuZh);
		return list;
	}
	
	
	@Override
	public void changeTime(TestPlan aa) {
		// TODO Auto-generated method stub
		testDao.changeTime(aa);
	}
	
	
	
	
}
