package com.spring_boot_cherrysumer.project.service;



import com.spring_boot_cherrysumer.project.model.MypageVO;

public interface IMypageService {
	public MypageVO readpage(String memId);
	public void updatepage(MypageVO vo);


}
