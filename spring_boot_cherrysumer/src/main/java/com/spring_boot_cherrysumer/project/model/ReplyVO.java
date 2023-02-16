package com.spring_boot_cherrysumer.project.model;

public class ReplyVO {
	private int rno;
	private int cusNo;
	private String writer;
	private String content;
	private String regDate;
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getCusNo() {
		return cusNo;
	}
	public void setCusNo(int cusNo) {
		this.cusNo = cusNo;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
}
