package com.spring_boot_cherrysumer.project.dao;

import com.spring_boot_cherrysumer.project.model.MypageVO;

public interface IMypageDAO {
	//마이페이지 조회
	public MypageVO readpage(String memId);
	//마이페이지 수정
	public void updatepage(MypageVO vo);
}
