package com.luoyunfan.action;

 
 
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luoyunfan.entity.Admin;
import com.luoyunfan.entity.Student;
import com.luoyunfan.service.IAdminService;
import com.luoyunfan.service.impl.AdminService;

 
 
public class AdminAction extends BaseAction{
	
	 
	IAdminService adminService ;
	
	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}
	public String username;
	public String password;
	public String return_date;
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getReturn_date() {
		return return_date;
	}
	//管理员登录
	public String adminLogin() {
		System.out.println("aaa");
		Admin admin = new Admin();	
		System.out.println(username+"!!!!!!!!");
		admin.setUserName(username);
		admin.setPassWord(password);
		System.out.println(admin.getUserName()+","+admin.getPassWord());
//		adminService.test();
		boolean flag = adminService.findAdmin(admin);
		System.out.println(flag);
		if(flag){
			System.out.println("返回aaa");
			return_date="aaa";
			session.put("admin", admin.getUserName());
		}else{
			System.out.println("返回bbb");
			return_date="bbb";
		}
		return "success";
	}
	//管理员查询学生信息
	public String op;
	
	public void setOp(String op) {
		this.op = op;
	}
	
	public String stuSearch() {
		System.out.println("查询ALL"+op);
		List<Student> student = adminService.stuSearchAll();
		 System.out.println(student);
		session.put("allstu", student);
		if(op!=null&&op.equals("addtest")) {
			return "add";
		}else {
			return "success";
		}
	}
 
	//按条件查询
	//获得条件
	public String conId;
	public String conName;
	
	public void setConId(String conId) {
		this.conId = conId;
	}
	public void setConName(String conName) {
		this.conName = conName;
	}
	
	public String serachByCondition() throws UnsupportedEncodingException {
		System.out.println("条件查询ALL");
		 Map<String,Object>  condition1=new HashMap<>();
		 System.out.println(conId);
		 conName = new String(conName.getBytes("iso-8859-1"), "utf-8");
		 System.out.println(conName);
		 
		 List<Student> student ;
		 if(conName.equals("")&&conId.equals("")) {
			  student = adminService.stuSearchAll();
		 }else {
			 if(!conId.equals("")) {
				 condition1.put("stuZh", conId);
			 }
			 if(!conName.equals("")) {
				 condition1.put("stuName", conName);
			 }
			   student = adminService.serachByCondition(condition1);
		 }
		
		System.out.println(student);
		session.put("allstu", student);
		return "success";
		 
	}
	
	//删除学生
	public String stuZh;
	
	public void setStuZh(String stuZh) {
		this.stuZh = stuZh;
	}
	public String delStu(){
		System.out.println("删除学生"+stuZh);
		adminService.delStu(stuZh);
		//删除之后重新设置allstu
		List<Student> student = adminService.stuSearchAll();
		System.out.println("删除操作结束");
		session.put("allstu", student);
		return "success";
	}
	//退出登录
	public String exitLogin() {
		System.out.println("退出登录");
		if(!(session.get("admin")==null)) {
			System.out.println("移除admin");
			session.remove("admin");
		}
		return "success";
	}
}
