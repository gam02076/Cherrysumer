package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IPictureDAO;
import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;
@Service
public class PictureService implements IPictureService {
	@Autowired
	@Qualifier("IPictureDAO")
	IPictureDAO dao;
	@Override
	
	public ArrayList<PictureVO> ListPicture() {
		
		
		return dao.ListPicture() ;
	}
	
	@Override
	
	public ArrayList<PictureVO> ListPicture1() {
		
		
		return dao.ListPicture1() ;
	}
	
	
	@Override
	public void insert(PictureVO vo ) {
	
		dao.insert(vo);
		
	}
	
	
	// 키워드 검색
	@Override
	public ArrayList<PictureVO> Search (String keyword ) {
	
		return dao.Search(keyword);
		
	}
	
	
	//전시회 메인 출력 	
	@Override
	public ExhibitionVO ListPicture2(String exhNo) {
		
		return dao.ListPicture2(exhNo); 
	
	
	}

	@Override
	public ArrayList<PictureVO> greenEyeFilter() {
		return dao.greenEyeFilter() ;
	}

	@Override
	public void PicNopass(int picNo) {
		dao.PicNopass(picNo);
		
	}

	@Override
	public void PicPass(int picNo) {
		dao.PicPass(picNo);
		
	}
	
////	삭제
//	@Override
//	public void Delete(String picNo) {
//		
//		dao.Delete(picNo);
//		
//	}
	
 
	
	
	
}
