package com.spring_boot_cherrysumer.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IMypageDAO;
import com.spring_boot_cherrysumer.project.model.MypageVO;

@Service
public class MypageService implements IMypageService {
	@Autowired
	@Qualifier("IMypageDAO")
	private IMypageDAO dao2;


	@Override
	public MypageVO readpage(String memId) {
		
		return dao2.readpage(memId);
	}

	@Override
	public void updatepage(MypageVO vo) {
		/*
		 * System.out.println(vo.getMemId()); System.out.println(vo.getMemName());
		 * System.out.println(vo.getMemEmail()); System.out.println(vo.getMemHP());
		 * System.out.println(vo.getMemZipcode());
		 * System.out.println(vo.getMemAddress1());
		 * System.out.println(vo.getMemAddress2()); System.out.println(vo.getMemType());
		 */
		dao2.updatepage(vo);
	}

}
