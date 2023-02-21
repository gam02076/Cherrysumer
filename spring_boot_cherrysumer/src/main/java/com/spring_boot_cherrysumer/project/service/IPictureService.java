package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;

public interface IPictureService {
	
	public ArrayList<PictureVO> ListPicture();

	public ArrayList<PictureVO> greenEyeFilter(); //관리자
	
	public void insert(PictureVO vo ); // 등록
	

	public ArrayList<PictureVO> Search(String keyword);
	
	public ArrayList<PictureVO> ListPicture1();

	public ExhibitionVO ListPicture2(String exhNo);
	
	public void PicNopass(int picNo); // 불통과시 삭제
	
	public void PicPass(int picNo); // 통과된 사진 '1'로 교체

	public ArrayList<PictureVO> ListPicture3();
	
////	삭제
//	public void Delete(String picNo);
//	
	
} 
