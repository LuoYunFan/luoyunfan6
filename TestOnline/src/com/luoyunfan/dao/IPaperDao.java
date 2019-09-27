package com.luoyunfan.dao;

import java.util.List;

import com.luoyunfan.entity.Paper;

public interface IPaperDao {
	public Paper findPaper(String paperName);
	public boolean addPaper(String papername,String timuid);
	public List<Paper> paperSearchName();
	public int delPaper(String paperName);
}
