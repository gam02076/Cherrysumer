package com.spring_boot_cherrysumer.project.service;
import java.util.ArrayList;

//
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IExhibitionDAO;
import com.spring_boot_cherrysumer.project.model.ArtVO;
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

	@Override
	public ArrayList<ArtVO> getArtInfo(String memId) {
		return dao.getArtInfo(memId);
	}

	@Override
	public MemberVO ExhRequest_MemberInfo(String memId) {
		return dao.ExhRequest_MemberInfo(memId);
	}

	@Override
	public void insertExhRequest(ExhibitionVO Evo, ArtVO Avo) {
		dao.insertExhRequest(Evo);
		dao.insertArtRequest(Avo);
		
	}





//	@Override
//	public void insertExhInfo(ExhibitionVO ExhibitionVO) { // exhibitionVO 받아옴.
//		// (1) 신청 정보 저장 (Exhibition 테이블)
//		dao.insertExhInfo(ExhibitionVO);
//	}
//
//	@Override
//	public void insertArtInfo(ArtVO ArtVO) {
//		// (2) 신청 작품 내용 저장 (ArtVO 테이블)
//		dao.insertArtInfo(ArtVO);	
//	}


}
