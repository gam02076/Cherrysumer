package com.spring_boot_cherrysumer.project.model;

public class ArtVO {
	private String artNo;
	private String artImg;
    private String artName_kr;
    private String artName_eng;
    private int artPrice;
	private int artDate;
    private String artSize;
    private String memId;
    private String ctgId;
    
    // Getter + Setter
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
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getCtgId() {
		return ctgId;
	}
	public void setCtgId(String ctgId) {
		this.ctgId = ctgId;
	}
}
