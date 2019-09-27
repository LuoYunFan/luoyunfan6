package com.luoyunfan.dao;

import java.util.List;

import com.luoyunfan.entity.PassTest;

public interface IPassTestDao {
	public int addHistoryInfo(String stuZh, String paperName, String score, String timeStr1);
	public List<PassTest> findStuTest(String stuZh);
}
