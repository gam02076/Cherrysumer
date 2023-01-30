package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.PictureVO;

public interface IPictureService {
	public ArrayList<PictureVO> ListPicture();

	public void insert(PictureVO vo ); // 등록
	

	public ArrayList<PictureVO> Search(String keyword);
	
	
////	삭제
//	public void Delete(String picNo);
//	
	
} 
