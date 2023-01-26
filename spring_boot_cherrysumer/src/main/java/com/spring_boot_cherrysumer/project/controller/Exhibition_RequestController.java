package com.spring_boot_cherrysumer.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Exhibition_RequestController {
	
	@RequestMapping("/requestList")
	public String requestList() {
			return "exhibition_requestListForm";
		
	}
}
