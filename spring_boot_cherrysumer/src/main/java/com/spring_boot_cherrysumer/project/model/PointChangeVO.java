package com.spring_boot_cherrysumer.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PointChangeVO {
	private int pointChangeNo;
	private String memId;
	private int pointAdd;
	private int pointUsed;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date pointDate;
	private String pointDescription;

	public int getPointChangeNo() {
		return pointChangeNo;
	}

	public void setPointChangeNo(int pointChangeNo) {
		this.pointChangeNo = pointChangeNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getPointAdd() {
		return pointAdd;
	}

	public void setPointAdd(int pointAdd) {
		this.pointAdd = pointAdd;
	}

	public int getPointUsed() {
		return pointUsed;
	}

	public void setPointUsed(int pointUsed) {
		this.pointUsed = pointUsed;
	}

	public Date getPointDate() {
		return pointDate;
	}

	public void setPointDate(Date pointDate) {
		this.pointDate = pointDate;
	}

	public String getPointDescription() {
		return pointDescription;
	}

	public void setPointDescription(String pointDescription) {
		this.pointDescription = pointDescription;
	}

}
