package com.luoyunfan.entity;

public class TestPlan {
	String stuZh;
	String paperName;
	String endTime;
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getStuZh() {
		return stuZh;
	}
	public void setStuZh(String stuZh) {
		this.stuZh = stuZh;
	}
	public String getPaperName() {
		return paperName;
	}
	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}
	@Override
	public String toString() {
		return "TestPlan [stuZh=" + stuZh + ", paperName=" + paperName + ", endTime=" + endTime + "]";
	}
	
}
