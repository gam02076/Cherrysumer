package com.spring_boot_cherrysumer.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IDealDAO;
import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.DealVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.MypageVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;

@Service
public class DealService implements IDealDAO {
	@Autowired
	@Qualifier("IDealDAO")
	private IDealDAO dao;
	
	@Override
	public PictureVO DealCheck(String picNo) {
		
		
		return dao.DealCheck(picNo);
	}
	
	@Override
	public MypageVO Dealinfo(String memId) {
		
		return dao.Dealinfo(memId);
	}

	@Override
	public void insertdeal(DealVO vo ) {
	
		dao.insertdeal(vo);
		
	}
	@Override
	public ArtVO exhDetail(String exhNo) {
	 
		return dao.exhDetail(exhNo);
	}
	
	@Override
	public String picMemId(String exhNo) {
		// TODO Auto-generated method stub
		return dao.picMemId(exhNo);
	}

	@Override
	public MemberVO Artist(String memId) {
		// TODO Auto-generated method stub
		return dao.Artist(memId);
	}

	public ArtVO Noexh(String artImg) {
		
		return dao.Noexh(artImg);
	}

	@Override
	public ArtVO exDealCheck(String artNo) {
		
		
		return dao.exDealCheck(artNo);
	}

	public MemberVO memCheck(String memId) {
	
		return dao.memCheck(memId);
	}

}
