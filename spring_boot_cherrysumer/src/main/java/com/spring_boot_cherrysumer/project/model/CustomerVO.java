package com.spring_boot_cherrysumer.project.model;

public class CustomerVO {
	public int getCusNo() {
		return cusNo;
	}
	public void setCusNo(int cusNo) {
		this.cusNo = cusNo;
	}
	public String getCustitle() {
		return custitle;
	}
	public void setCustitle(String custitle) {
		this.custitle = custitle;
	}
	public String getCusdate() {
		return cusdate;
	}
	public void setCusdate(String cusdate) {
		this.cusdate = cusdate;
	}
	public String getCustext() {
		return custext;
	}
	public void setCustext(String custext) {
		this.custext = custext;
	}
	public String getCuspublic() {
		return cuspublic;
	}
	public void setCuspublic(String cuspublic) {
		this.cuspublic = cuspublic;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	private int cusNo;
	private String custitle;
    private String cusdate;
    private String custext;
    private String cuspublic;
	private String memId;
	private String cusabc;
	private String cus;
	public String getCus() {
		return cus;
	}
	public void setCus(String cus) {
		this.cus = cus;
	}
	public String getCusabc() {
		return cusabc;
	}
	public void setCusabc(String cusabc) {
		this.cusabc = cusabc;
	}
}
