package com.spring_boot_cherrysumer.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot_cherrysumer.project.model.PictureVO;
import com.spring_boot_cherrysumer.project.service.DealService;

@Controller
public class DealController {
	@Autowired
	DealService service; 

	@RequestMapping("/dealcheck")
	public String DealCheck(@RequestParam String picNo, Model model){

		PictureVO deal=service.DealCheck(picNo); 

		model.addAttribute("deal", deal);

		return "/deal/deal";
	}
}

