package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IPointChangeDAO;
import com.spring_boot_cherrysumer.project.model.PointChangeVO;

@Service
public class PointChangeService implements IPointChangeService {
	@Autowired
	@Qualifier("IPointChangeDAO")
	IPointChangeDAO dao;
	
	@Override
	public ArrayList<PointChangeVO> pointView(String memId) {
		
		return dao.pointView(memId);
	}

}
