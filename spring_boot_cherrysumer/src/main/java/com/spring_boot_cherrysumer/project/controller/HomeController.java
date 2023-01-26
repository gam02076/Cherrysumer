package com.spring_boot_cherrysumer.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_cherrysumer.project.model.HomeVO;
import com.spring_boot_cherrysumer.project.service.HomeService;

@Controller
public class HomeController {
	@Autowired
	HomeService service;
	@RequestMapping("/")
	public String index(Model model) {
		ArrayList<HomeVO> list = service.listMember();
		model.addAttribute("list", list);
		return "NewFile";
	}
	
	@RequestMapping("/member/signup")
	public String signUp() {

		return "member/signup";
	}
	
	@RequestMapping("/member/login")
	public String login() {

		return "member/login";
	}

	@RequestMapping("/Mypicture")
	public String Mypicture() {
		
		return "mypage/Mypicture";
	}
}
