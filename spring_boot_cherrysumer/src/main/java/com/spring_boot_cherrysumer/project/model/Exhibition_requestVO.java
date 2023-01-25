package com.spring_boot_cherrysumer.project.model;

public class Exhibition_requestVO {
	private String rNo;
	private String rTitle;
	private String rNickName;
	private String rIntroduce;
	private String rBank;
	private String rDepositor;
	private String rAccount;
	private String rETC;
	private String rDate;
	private String memId;
	
	// getter + setter 
	public String getrNo() {
		return rNo;
	}
	public void setrNo(String rNo) {
		this.rNo = rNo;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrNickName() {
		return rNickName;
	}
	public void setrNickName(String rNickName) {
		this.rNickName = rNickName;
	}
	public String getrIntroduce() {
		return rIntroduce;
	}
	public void setrIntroduce(String rIntroduce) {
		this.rIntroduce = rIntroduce;
	}
	public String getrBank() {
		return rBank;
	}
	public void setrBank(String rBank) {
		this.rBank = rBank;
	}
	public String getrDepositor() {
		return rDepositor;
	}
	public void setrDepositor(String rDepositor) {
		this.rDepositor = rDepositor;
	}
	public String getrAccount() {
		return rAccount;
	}
	public void setrAccount(String rAccount) {
		this.rAccount = rAccount;
	}
	public String getrETC() {
		return rETC;
	}
	public void setrETC(String rETC) {
		this.rETC = rETC;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}

}
