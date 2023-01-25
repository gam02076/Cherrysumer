package com.spring_boot_cherrysumer.project.service;
//
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IExhibitionDAO;
import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;

@Service
public class ExhibitionService implements IExhibitionService {
	@Autowired
	@Qualifier("IExhibitionDAO")
	IExhibitionDAO dao;
	
	@Override
	public ExhibitionVO detailViewExhibibition(String exhNo) {
		return dao.detailViewExhibibition(exhNo);
	}

	@Override
	public MemberVO getMemberInfo(String memId) {
		return dao.getMemberInfo(memId);
	}
}
//