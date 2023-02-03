package com.spring_boot_cherrysumer.project.dao;

import java.util.HashMap;

import com.spring_boot_cherrysumer.project.model.MemberVO;

public interface IMemberDAO {
	public void insertMember(MemberVO vo);
	public String loginCheck(String id);
	public String memIdCheck(String memId); // 아이디 중복 확인
	public String findId(HashMap<String, Object> map);
	public String findPwd(HashMap<String, Object> map);
	public void insertPoint(String memId);
	public void changePwd(MemberVO vo);
	public String memInfoSearchNameCheck(String memName, String memEmail);
}
