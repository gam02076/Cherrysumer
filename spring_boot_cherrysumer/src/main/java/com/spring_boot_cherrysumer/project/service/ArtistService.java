package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IArtistDAO;
import com.spring_boot_cherrysumer.project.model.ArtVO;
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
	public ArrayList<PictureVO> ArtListALL() {
		// TODO Auto-generated method stub
		return dao.ArtListALL();
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
	public ArrayList<ArtVO> exList() {
		// TODO Auto-generated method stub
		return dao.exList();
	}

	
		/*
		 * @Override public ArrayList<ArtistVO> ArtistAll() { return dao.ArtistAll(); }
		 * 
		 * @Override public ArrayList<ArtDetailVO> ArtList() { return dao.ArtList(); }
		 * 
		 * @Override public ArtDetailVO ArtDetail(String picNo) { return
		 * dao.ArtDetail(picNo); }
		 * 
		 * @Override public MemberVO ArtName(String memId) { return dao.ArtName(memId);
		 * }
		 */
	 

}
