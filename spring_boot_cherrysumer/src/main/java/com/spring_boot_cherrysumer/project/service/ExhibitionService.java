package com.spring_boot_cherrysumer.project.service;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

//
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IExhibitionDAO;
import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.Exhibition_requestVO;
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

	@Override
	public ArrayList<ArtVO> getArtInfo(String memId) {
		return dao.getArtInfo(memId);
	}

	@Override
	public MemberVO ExhRequest_MemberInfo(String memId) {
		return dao.ExhRequest_MemberInfo(memId);
	}

	@Override
	public void insertExhRequest(ExhibitionVO Evo) {
		// 전시회 정보 저장
		dao.insertExhRequest(Evo);				
	}
	
	@Override
	public void insertExhRequestArt(ArtVO Avo) {
		// 전시회 작품 저장
		dao.insertArtRequestArt(Avo);
	}

	@Override
	public ArrayList<ExhibitionVO> listAllRequest() {
		return dao.listAllRequest();
	}

	@Override
	public MemberVO getMemberInfo2(String memId) {
		return dao.getMemberInfo2(memId);
	}

	@Override
	public void confirmSave(ExhibitionVO exh) {

		dao.confirmSave(exh);

		
	}
	
	



}
