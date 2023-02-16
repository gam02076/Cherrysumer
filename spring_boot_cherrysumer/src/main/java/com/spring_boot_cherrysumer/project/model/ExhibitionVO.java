package com.spring_boot_cherrysumer.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ExhibitionVO {
	private String exhNo;
	private String exhTitle_eng;
	private String exhTitle_kr;
	private String exhNickname;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date exhStartDate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date exhEndDate;
	private String exhSummary;
	private String exhInterview1;
	private String exhInterview2;
	private String exhInterview3;
	private String exhClosingWords;
	private String exhConfirm;
	private String memId;
	
	// table에는 없지만 사용할 데이터.
	// 한번에 for문 안에 출력하도록. 2개의 VO를 한번에 for문 못돌림.
	private String memName;
	
	
	// getter+setter
	public String getExhNo() {
		return exhNo;
	}

	public void setExhNo(String exhNo) {
		this.exhNo = exhNo;
	}

	public String getExhTitle_eng() {
		return exhTitle_eng;
	}

	public void setExhTitle_eng(String exhTitle_eng) {
		this.exhTitle_eng = exhTitle_eng;
	}

	public String getExhTitle_kr() {
		return exhTitle_kr;
	}

	public void setExhTitle_kr(String exhTitle_kr) {
		this.exhTitle_kr = exhTitle_kr;
	}

	public String getExhNickname() {
		return exhNickname;
	}

	public void setExhNickname(String exhNickname) {
		this.exhNickname = exhNickname;
	}

	public Date getExhStartDate() {
		return exhStartDate;
	}

	public void setExhStartDate(Date exhStartDate) {
		this.exhStartDate = exhStartDate;
	}

	public Date getExhEndDate() {
		return exhEndDate;
	}

	public void setExhEndDate(Date exhEndDate) {
		this.exhEndDate = exhEndDate;
	}

	public String getExhSummary() {
		return exhSummary;
	}

	public void setExhSummary(String exhSummary) {
		this.exhSummary = exhSummary;
	}

	public String getExhInterview1() {
		return exhInterview1;
	}

	public void setExhInterview1(String exhInterview1) {
		this.exhInterview1 = exhInterview1;
	}

	public String getExhInterview2() {
		return exhInterview2;
	}

	public void setExhInterview2(String exhInterview2) {
		this.exhInterview2 = exhInterview2;
	}

	public String getExhInterview3() {
		return exhInterview3;
	}

	public void setExhInterview3(String exhInterview3) {
		this.exhInterview3 = exhInterview3;
	}

	public String getExhClosingWords() {
		return exhClosingWords;
	}

	public void setExhClosingWords(String exhClosingWords) {
		this.exhClosingWords = exhClosingWords;
	}

	public String getExhConfirm() {
		return exhConfirm;
	}

	public void setExhConfirm(String exhConfirm) {
		this.exhConfirm = exhConfirm;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}
	
	
	
}