package com.luoyunfan.action;

import java.io.UnsupportedEncodingException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.luoyunfan.entity.Paper;
import com.luoyunfan.entity.PassTest;
import com.luoyunfan.entity.Student;
import com.luoyunfan.entity.TestPlan;
import com.luoyunfan.entity.Timu;
import com.luoyunfan.service.IAdminService;

public class AdminAction2 extends BaseAction{
	
	 
	IAdminService adminService ;
	public String return_date;
	public String timuid;
	public String timucont;
	public String daa;
	public String dab;
	public String dac;
	public String dad;
	public String dar;
	 
	public String getReturn_date() {
		return return_date;
	}
	public void setTimuid(String timuid) {
		this.timuid = timuid;
	}
	public void setTimucont(String timucont) {
		this.timucont = timucont;
	}
	public void setDaa(String daa) {
		this.daa = daa;
	}
	public void setDab(String dab) {
		this.dab = dab;
	}
	public void setDac(String dac) {
		this.dac = dac;
	}
	public void setDad(String dad) {
		this.dad = dad;
	}
	public void setDar(String dar) {
		this.dar = dar;
	}
	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}
	
	public String op;
	
	public void setOp(String op) {
		this.op = op;
	}
	//查询所有题目
	public String timuSearch() {
		System.out.println("查询ALL");
		List<Timu> timu = adminService.timuSearchAll();
		System.out.println(timu);
		//根据op判断哪个跳转哪个页面
		session.put("alltimu", timu);
		System.out.println("op:"+op);
		if(op.equals("find"))
		{
			return "success";
		}else {
			return "add";
		}
	}
	
	public String daaa;
	
	public void setDaaa(String daaa) {
		this.daaa = daaa;
	}
	//获取考试结果
	public String getResult() throws UnsupportedEncodingException {
		//成功获取到daa   如 ,1,8
		//paperName,stuZh
		//首先对daa进行格式化
		System.out.println("!!!!!!!!!!!!!!daa:"+daaa);
		if(daaa!=null)
		{String aaa[] = daaa.split(",");
		List<String>da = new ArrayList<String>();
		for(String aa:aaa) {
			if(!aa.equals("")) {
				aa = new String(aa.getBytes("iso-8859-1"),"utf-8");
				da.add(aa);
			}
		}
//		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!"+da);
		//获取到答案集合da 后 从数据库中查找 试卷名为paperName的题目的答案
		paperName = new String(paperName.getBytes("iso-8859-1"), "utf-8");
		Paper paper = adminService.findPaper(paperName);
		//通过试卷名字找到对应题号的答案
		String timuId[] = paper.getPaperTimu().split(",");
		//输出测试题目号，此时多个换行
		for(int i=0;i<timuId.length;i++) {
			System.out.println(timuId[i]);
		}
		//查找符合timuId的题目,这里面把，的“”去掉了
		List<Timu> list = adminService.searchById(timuId);
		System.out.println("???????????????????????????????"+list);
		int score1=0;
		//对比获取到的da是否是list中题目的答案
		for(int i=0;i<da.size();i++) {
			if((da.get(i).equals(list.get(i).getDa_R()))) {
				score1++;
			}
		}
		//把需要在已经页面显示的东西放在域里面
//		session.put("finalpaperName", paperName);
//		session.put("finalScore", score1);
//		session.put("finalTime",timeStr1);
		String timeStr1=LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		String score = score1+"";
		//需要向数据库插入一条历史考试信息
		adminService.addHistoryInfo(stuZh,paperName,score+"/"+list.size(),timeStr1);
		//从为考试的表中删除此条数据
		adminService.delTest(stuZh, paperName);
		
		}
		return "success";
	}
	//添加题目
	public String addTimu() {
		//首先判断题库有没有该题目
		//如果有
		Timu timu = new Timu();
		timu.setTimu_Id(timuid);
		timu.setTimu_Cont(timucont);
		timu.setDa_A(daa);
		timu.setDa_B(dab);
		timu.setDa_C(dac);
		timu.setDa_D(dad);
		timu.setDa_R(dar);
		System.out.println("题目添加:"+timu);
		List<Timu> t = adminService.serachTimuByCondition(timu.getTimu_Id());
		if(t.size()!=0) {
			//注册过
			return_date="fail";
		}
		else{
			//如果没有则添加
			boolean flag = adminService.addTimu(timu);
			System.out.println("添加成功");
			return_date="success";
		}
		return "success";
	}
	
	public String conId;
	public void setConId(String conId) {
		this.conId = conId;
	}
	//根据id查询题目
	public String serachTimuByCondition() {
		 System.out.println("条件查询conId="+conId);
		 
		 List<Timu> timu ;
		 if(conId.equals("")) {
			  timu = adminService.timuSearchAll();
		 }else {
			 timu = adminService.serachTimuByCondition(conId);
		 }
		 System.out.println(timu);
		session.put("alltimu", timu);
		return "success";
	}
	//删除题目
	public String delid;
	public void setDelid(String delid) {
		this.delid = delid;
	}
	public String delTimu() {
		System.out.println("删除题目："+delid);
		adminService.delTimu(delid);
		List<Timu> timu = adminService.timuSearchAll();
		
		session.put("alltimu", timu);
		return "success";
	}
	public String paperName;
	public String timuId;
	
	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}
	public void setTimuId(String timuId) {
		this.timuId = timuId;
	}
	//试卷添加
	public String addPaper() {
		System.out.println("Action生成试卷:" +paperName+","+timuId);
		boolean flag= adminService.addPaper(paperName, timuId);
		if(flag) {
			System.out.println("添加成功");
			return_date = "addOk";
		}else {
			System.out.println("添加失败");
			return_date = "addNo";
		}
		return "success";
	}
	//试卷查询
	public String paperSearch() {
		System.out.println("Action2试卷名字查询");
		List<Paper> list = adminService.paperSearchName();
		System.out.println(list);
		session.put("paperNames", list);
		return "success";
	}
	//试卷删除
	public String delPaper() throws UnsupportedEncodingException {
		paperName = new String(paperName.getBytes("iso-8859-1"), "utf-8");
		System.out.println("试卷删除:"+paperName);
		adminService.delPaper(paperName);
		//重新生成paperNames
		List<Paper> list = adminService.paperSearchName();
		session.put("paperNames", list);
		System.out.println("删除结束");
		return "success";
	}
	//查找某个试卷中题目的详细信息
	public String paperDetail() throws UnsupportedEncodingException {
		//paperName为需要查找的试卷的试卷名。
		paperName = new String(paperName.getBytes("iso-8859-1"), "utf-8");
		//首先通过试卷名查找到试卷中有的题目号。
		Paper paper = adminService.findPaper(paperName);
		//得到试卷题目号
		String timuId[] = paper.getPaperTimu().split(",");
		System.out.println("试卷为："+paper+"!!!!");
		System.out.println("题号为");
		//输出测试题目号，此时多个换行
		for(int i=0;i<timuId.length;i++) {
			System.out.println(timuId[i]);
		}
		//查找符合timuId的题目
		List<Timu> list = adminService.searchById(timuId);
		session.put("paperName", paperName);
		session.put("timuDetail",list);
		if(op!=null&&op.equals("stu"))
		{
			return "stusuccess";
		}else {
			return "success";
		}
	}
	//前往考试页面
		public String gotoTest() throws UnsupportedEncodingException {
			//stuZh是考生信息 paperName是试卷名字
			//去查找试卷信息
			paperName = new String(paperName.getBytes("iso-8859-1"), "utf-8");	
			System.out.println(stuZh+"考试："+paperName);
			//首先通过试卷名查找到试卷中有的题目号。
		    Paper paper = adminService.findPaper(paperName);
		    System.out.println("试卷为："+paper+"!!!!");
			System.out.println("题号为");
			//查找符合timuId的题目
			String timuId[] = paper.getPaperTimu().split(",");
			List<Timu> list = adminService.searchById(timuId);
			session.put("testpaperName", paperName);
			session.put("testTimuDetail",list);
			session.put("testStu", stuZh);
			
			return "success";
		}
	//给某个学生安排考试
	public String stuZh;
	
	public void setStuZh(String stuZh) {
		this.stuZh = stuZh;
	}
	public String testPlan() {
		//stuZh是给哪个学生安排考试。
		//去数据库查找所有试卷
		List<Paper> list = adminService.paperSearchName();
		session.put("paperNames", list);
		session.put("xuesheng", stuZh);
		return "success";
	}
	//向数据表examPlan添加数据
	public String time1;
	
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String addTestPlan() throws UnsupportedEncodingException {
		//stuZh是传过来的学生学号
		//paperName是传过来的试卷编号
		System.out.println("7.4:"+stuZh+","+paperName+","+time1);
 
		boolean flag=adminService.addTestPlan(stuZh,paperName,time1);
		//为false则之前添加过
		if(flag) {
			return_date="addTestPlanOk";
		}else {
			return_date="addTestPlanNo";
		}
		return "success";
	}
	public String changeTime() {
		TestPlan aa = new TestPlan();
		aa.setEndTime(time1);
		System.out.println(paperName+">>>??!!!!!!!!!"+stuZh+time1);
		aa.setPaperName(paperName);
		aa.setStuZh(stuZh);
		adminService.changeTime(aa);
		
		return_date="aaaa";
		return "success";
	}
	//查询所有的考试信息
	public String searchAllTest() {
		if(op!=null&&op.equals("stu")) {
			System.out.println("学生查询考试信息,学号："+stuZh);
			List<TestPlan> list = adminService.searchAllTest();
			System.out.println(list);
			List<TestPlan> list1= new ArrayList<TestPlan>();
			for(TestPlan info : list) {
				 
				if(info.getStuZh().equals(stuZh)) {
					list1.add(info);
				}
			}
			session.put("allTest", list1);
			return "stu";
		}
		else {
			List<TestPlan> list = adminService.searchAllTest();
			session.put("allTest", list);
			return "success";
		}
	}
	 
	//删除考试信息
	public String delTest() throws UnsupportedEncodingException {
		
		paperName = new String(paperName.getBytes("iso-8859-1"), "utf-8");
		System.out.println("删除："+stuZh+","+paperName);
		adminService.delTest(stuZh,paperName);
		
		List<TestPlan> list = adminService.searchAllTest();
		session.put("allTest", list);
		return "success";
	}
	//转到题目修改
	public String timuChange() {
		
		//先根据题目id找到对象的题目
		Timu timu = adminService.serachTimuByCondition(timuId).get(0);
		
		session.put("changeTimu", timu);
		return "success";
	}
	//向数据库修改题目数据
	public String ChangeTimu() {
		Timu timu = new Timu();
		timu.setTimu_Id(timuid);
		timu.setTimu_Cont(timucont);
		timu.setDa_A(daa);
		timu.setDa_B(dab);
		timu.setDa_C(dac);
		timu.setDa_D(dad);
		timu.setDa_R(dar);
		adminService.ChangeTimu(timu);
		List<Timu> timu1 = adminService.timuSearchAll();	
		session.put("alltimu", timu1);
		return_date="changeOk";
		return "success";
	}
	
	//查询历史考试信息searchPastTest
	public String searchPastTest() {
		//首先得到哪位学生查询 stuZh
		List<PassTest> list = adminService.searchPastTest(stuZh);
		System.out.println(list);
		session.put("info", list);
		return "success";
	}
}
