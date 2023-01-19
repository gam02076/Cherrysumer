package com.spring_boot_cherrysumer.project.service;
//
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IExhibitionDAO;
import com.spring_boot_cherrysumer.project.model.ExhibitionVO;

@Service
public class ExhibitionService implements IExhibitionService {
	@Autowired
	@Qualifier("IExhibitionDAO")
	IExhibitionDAO dao;
	
	@Override
	public ExhibitionVO detailExhibibition1(String exhNo) {
		return dao.detailExhibibition1(exhNo);
	}
}
//