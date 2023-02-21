package com.spring_boot_cherrysumer.project.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.DealVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.MypageVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;
import com.spring_boot_cherrysumer.project.service.ArtistService;
import com.spring_boot_cherrysumer.project.service.DealService;
import com.spring_boot_cherrysumer.project.service.PictureService;

@Controller
public class DealController {
	@Autowired
	DealService service;
	
	@Autowired
	ArtistService service2;


	@RequestMapping("/dealcheck")
	public String DealCheck(@RequestParam String picNo, Model model,
								HttpSession session){
		
		String memId = (String) session.getAttribute("sid");


		MypageVO vo = service.Dealinfo(memId);
		PictureVO deal=service.DealCheck(picNo); 

		model.addAttribute("deal", deal);
		model.addAttribute("vo", vo);

		return "/deal/deal";
	}
	
	
	@RequestMapping("/dealcheckinsert")
	public String insertdeal (DealVO vo) {
		
		
		service.insertdeal(vo);

		
		return "result"; 
		
	}
	
	
	@RequestMapping("/exdealcheck")
	public String exDealCheck( ArtVO vo, MemberVO vo3,Model model,
								HttpSession session){
		
		String memId = (String) session.getAttribute("sid");
		String artNo=vo.getArtNo();
		String mem1 = vo3.getMemId();
		
		
		MypageVO vo1 = service.Dealinfo(memId);
		ArtVO deal=service.exDealCheck(artNo);
		MemberVO mem = service.memCheck(mem1);

		model.addAttribute("mem", mem);
		model.addAttribute("deal", deal);
		model.addAttribute("vo1", vo1);

		return "/deal/exdeal";
	}

	
	
	
	/* 사진상세정보 불러오기 */
	@RequestMapping("/exhDetail")
	public String artDetail(@RequestParam String artImg, Model model) {
		
		
         ArtVO art = service.Noexh(artImg);
		
		model.addAttribute("art", art);

	String member = service2.picMemId(art.getMemId());

		MemberVO mem = service2.Artist(member);
	model.addAttribute("mem", mem);
 
		return "art/exhibitionDetail";
	}
	
	
	


}
