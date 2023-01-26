package com.spring_boot_cherrysumer.project.dao;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.PictureVO;

public interface IPictureDAO {
	public ArrayList<PictureVO> ListPicture();
	
	public void insert(PictureVO vo ); // 등록

	public ArrayList<PictureVO> Search(String keyword);
	

}
