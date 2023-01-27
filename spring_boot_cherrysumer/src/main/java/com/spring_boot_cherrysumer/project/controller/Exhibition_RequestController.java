package com.spring_boot_cherrysumer.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.service.ExhibitionService;

@Controller
public class Exhibition_RequestController {
	@Autowired
	private ExhibitionService service;
	
	@RequestMapping("/exhibition_requestForm")
	public String exhibition_requestForm(Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		
		// 회원 Id 전달하고 해당 회원 상세 정보 받아오기 ( 1명의 정보에 관한 정보)
		MemberVO request_memVo = service.ExhRequest_MemberInfo(memId);
		model.addAttribute("request_memVo",request_memVo);
		return "exhibition/exhibition_request";
	}
}
