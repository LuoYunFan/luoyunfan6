package com.luoyunfan.dao;

import java.util.List;
import java.util.Map;

import com.luoyunfan.entity.Student;
import com.luoyunfan.entity.Timu;

public interface ITimuDao {
	public List<Timu> timuSearchAll();
	public boolean addTimu(Timu timu);
	public List<Timu> serachTimuByCondition(String id);
	public void delTimu(String id);
	
	public List<Timu> searchById(List<String> list);
	
	public int ChangeTimu(Timu timu);
	
}
