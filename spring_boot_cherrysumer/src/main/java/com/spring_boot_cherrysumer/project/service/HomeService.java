package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IHomeDAO;
import com.spring_boot_cherrysumer.project.model.HomeVO;

@Service
public class HomeService implements IHomeService{
	@Autowired
	@Qualifier("IHomeDAO")
	IHomeDAO dao;
	@Override
	public ArrayList<HomeVO> listMember() {
		// TODO Auto-generated method stub
		return dao.listMember();
	}
	

}
