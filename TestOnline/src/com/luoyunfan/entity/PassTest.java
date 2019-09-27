package com.luoyunfan.entity;

public class PassTest {
	String stuZh;
	String paperName;
	String testScore;
	String testTime;
	 
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

	public String getTestScore() {
		return testScore;
	}

	public void setTestScore(String testScore) {
		this.testScore = testScore;
	}

	public String getTestTime() {
		return testTime;
	}

	public void setTestTime(String testTime) {
		this.testTime = testTime;
	}

	@Override
	public String toString() {
		return "PassTest [stuZh=" + stuZh + ", paperName=" + paperName + ", testScore=" + testScore + ", testTime="
				+ testTime + "]";
	}
	
}
