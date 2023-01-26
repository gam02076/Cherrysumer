package com.spring_boot_cherrysumer.project.dao;

import com.spring_boot_cherrysumer.project.model.MypageVO;

public interface IMypageDAO {
	public MypageVO readpage(String memId);
	public void updatepage(MypageVO vo);
}
