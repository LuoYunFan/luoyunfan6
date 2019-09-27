package com.luoyunfan.entity;

public class Paper {
	String paperName;
	String paperTimu;
	public String getPaperName() {
		return paperName;
	}
	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}
	public String getPaperTimu() {
		return paperTimu;
	}
	public void setPaperTimu(String paperTimu) {
		this.paperTimu = paperTimu;
	}
	@Override
	public String toString() {
		return "Paper [paperName=" + paperName + ", paperTimu=" + paperTimu + "]";
	}
	
}
