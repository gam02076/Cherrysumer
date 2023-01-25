package com.spring_boot_cherrysumer.project.service;

import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;

public interface IExhibitionService {
	public ExhibitionVO detailViewExhibibition(String exhNo);
	
	// 전시회 상세 출력에 필요한 메소드
	public MemberVO getMemberInfo(String memId);
}
