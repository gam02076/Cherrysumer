package com.spring_boot_cherrysumer.project.service;

import com.spring_boot_cherrysumer.project.model.MypageVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;

public interface IDealService {

	
	public PictureVO DealCheck(String picNo);
	
	public MypageVO Dealinfo(String memId);
}
