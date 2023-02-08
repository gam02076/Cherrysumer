package com.spring_boot_cherrysumer.project.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Exhibition2VO {

	private String exhNo;
	private String exhTitle_eng;
	private String exhTitle_kr;
	private String exhNickname;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date exhStartDate;
	private String exhEndDate;
	private String exhSummary;
	private String exhInterview1;
	private String exhInterview2;
	private String exhInterview3;
	private String exhClosingWords;
	private String exhConfirm;
	private String memId;
	private String artNo;
	private String artImg;
    private String artName_kr;
    private String artName_eng;
    private int artPrice;
	private int artDate;
	private String artSize;
	private String artExplain;
	private String artMain;
    private String ctgId;
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
	public String getExhEndDate() {
		return exhEndDate;
	}
	public void setExhEndDate(String exhEndDate) {
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
	public String getArtNo() {
		return artNo;
	}
	public void setArtNo(String artNo) {
		this.artNo = artNo;
	}
	public String getArtImg() {
		return artImg;
	}
	public void setArtImg(String artImg) {
		this.artImg = artImg;
	}
	public String getArtName_kr() {
		return artName_kr;
	}
	public void setArtName_kr(String artName_kr) {
		this.artName_kr = artName_kr;
	}
	public String getArtName_eng() {
		return artName_eng;
	}
	public void setArtName_eng(String artName_eng) {
		this.artName_eng = artName_eng;
	}
	public int getArtPrice() {
		return artPrice;
	}
	public void setArtPrice(int artPrice) {
		this.artPrice = artPrice;
	}
	public int getArtDate() {
		return artDate;
	}
	public void setArtDate(int artDate) {
		this.artDate = artDate;
	}
	public String getArtSize() {
		return artSize;
	}
	public void setArtSize(String artSize) {
		this.artSize = artSize;
	}
	public String getArtExplain() {
		return artExplain;
	}
	public void setArtExplain(String artExplain) {
		this.artExplain = artExplain;
	}
	public String getArtMain() {
		return artMain;
	}
	public void setArtMain(String artMain) {
		this.artMain = artMain;
	}
	public String getCtgId() {
		return ctgId;
	}
	public void setCtgId(String ctgId) {
		this.ctgId = ctgId;
	}
    
    
}
