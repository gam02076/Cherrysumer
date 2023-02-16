package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IArtistDAO;
import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.Exhibition2VO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;

@Service
public class ArtistService implements IArtistDAO {

	  @Autowired
	  @Qualifier("IArtistDAO")
	   private IArtistDAO dao;

	@Override
	public ArrayList<MemberVO> ArtistAll() {
		 return dao.ArtistAll();
	}

	@Override
	public ArrayList<PictureVO> ArtList(String memId) {
		// TODO Auto-generated method stub
		return dao.ArtList(memId);
	}

	@Override
	public MemberVO Artist(String memId) {
		// TODO Auto-generated method stub
		return dao.Artist(memId);
	}

	@Override
	public PictureVO picDetail(String picNo) {
		// TODO Auto-generated method stub
		return dao.picDetail(picNo);
	}

	@Override
	public String picMemId(String picNo) {
		// TODO Auto-generated method stub
		return dao.picMemId(picNo);
	}


	@Override
	public void ArtUpdate(PictureVO vo) {
		dao.ArtUpdate(vo);
	}

	@Override
	public void myArtDelete(String picNo) {
		dao.myArtDelete(picNo);
		
	}

	@Override
	public int NowMyPoint(String memId) {
		return dao.NowMyPoint(memId);
		
	}

	@Override
	public ArrayList<Exhibition2VO> exList2(String today) {
		return dao.exList2(today);
	}

	@Override
	public ArrayList<Exhibition2VO> comingList(String today) {
		return dao.comingList(today);
	}

	@Override
	public String artistName(String memId) {
		return dao.artistName(memId);
	}
	 

}
