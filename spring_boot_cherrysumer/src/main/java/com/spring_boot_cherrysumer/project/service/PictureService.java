package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IPictureDAO;
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
	public void insert(PictureVO vo ) {
	
		dao.insert(vo);
		
	}
	
	@Override
	public ArrayList<PictureVO> Search (String keyword ) {
	
		return dao.Search(keyword);
		
	}
	
 
	
	
	
}
