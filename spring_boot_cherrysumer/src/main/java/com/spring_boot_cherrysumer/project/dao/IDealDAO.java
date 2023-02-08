package com.spring_boot_cherrysumer.project.dao;

import com.spring_boot_cherrysumer.project.model.DealVO;
import com.spring_boot_cherrysumer.project.model.MypageVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;

public interface IDealDAO {
	
	public PictureVO DealCheck(String picNo);

	MypageVO Dealinfo(String memId);
	
	
	public void insertdeal(DealVO vo ); // 등록

}
