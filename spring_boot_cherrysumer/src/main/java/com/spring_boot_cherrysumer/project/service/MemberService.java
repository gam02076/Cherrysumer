package com.spring_boot_cherrysumer.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IMemberDAO;
import com.spring_boot_cherrysumer.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public String loginCheck(HashMap<String, Object> map) {
		// 전달된 아이디로 암호회된 비밀번호 알아오기
		String encodedPw = dao.loginCheck((String) map.get("id"));

		String result = "fail";
		// 암호화된 비밀번호와 입력해서 전달된 비밀번호와 일치하는지 확인
		if (encodedPw != null && passwordEncoder.matches((String) map.get("pwd"), encodedPw)) {
			result = "success";
		}
		return result;
	}

	@Override
	public void insertMember(MemberVO vo) {
		// 입력한 비밀번호를 암호화해서 저장
		// vo에서 비밀번호 가져와서 암호화한 후
		String encodedPassword = passwordEncoder.encode(vo.getMemPwd());
		// 암호화된 비밀번호로 저장한 후 db에 저장
		vo.setMemPwd(encodedPassword); // vo에 암호화된 비밀번호 저장
		dao.insertMember(vo);
	}

	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}

	@Override
	public String findId(String memName, String memEmail) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memName", memName);
		map.put("memEmail", memEmail);

		String result = dao.findId(map);
		
		return result;
	}

	@Override
	public String findPwd(String memName, String memEmail) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memName", memName);
		map.put("memEmail", memEmail);

		String result = dao.findPwd(map);
		
		return result;
	}

	@Override
	public void changePwd(MemberVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getMemPwd());
		
		vo.setMemPwd(encodedPassword);
		dao.changePwd(vo);
	}

}
