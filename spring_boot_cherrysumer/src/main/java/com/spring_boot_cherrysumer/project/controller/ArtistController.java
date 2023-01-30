package com.spring_boot_cherrysumer.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;
import com.spring_boot_cherrysumer.project.service.ArtistService;
import com.spring_boot_cherrysumer.project.service.PictureService;

@Controller
public class ArtistController {
	@Autowired
	ArtistService service;
	
	@Autowired
	PictureService service2;	
	
	/* 아티스트 리스트 */
	@RequestMapping("/artist")
	public String artistAll(Model model) {

		ArrayList<MemberVO> artList = service.ArtistAll();
		model.addAttribute("artList", artList);
		

		return "art/artistList";
	}

	/* 아티스트 모달창 DB전송 */
	  @RequestMapping("/artistModal") 
	  public String artistModal(@RequestParam String memId,Model model) {
	  
	  
	  MemberVO name = service.Artist(memId); 
	  model.addAttribute("name", name);
	  
	  ArrayList<PictureVO> art = service.ArtList(memId); 
	  model.addAttribute("art", art);
	  
	  return "art/artistModal";
	  }
	  
	  /* 아티스트 모달창 DB전송 */
	  @RequestMapping("/artModal") 
	  public String artModal(@RequestParam String memId,Model model) {
	  
	  
	  MemberVO name = service.Artist(memId); 
	  model.addAttribute("name", name);
	  
	  ArrayList<PictureVO> art = service.ArtList(memId); 
	  model.addAttribute("art", art);
	  
	  return "art/artDetail";
	  }
	  
	  
			/* 사진 리스트 (임시) */
		  @RequestMapping("/artList")
			public String artList(Model model) {
			  ArrayList<PictureVO> art=service.ArtListALL();
			  model.addAttribute("art", art);

				return "art/artList";
			}
		  
		/* 사진상세정보 DB전송 */
		
		  @RequestMapping("/artDetail")
		  
		  public String artDetail(@RequestParam String picNo,Model model) {
		  PictureVO art=service.picDetail(picNo);
		  model.addAttribute("art", art);
		  
		  String member=service.picMemId(picNo);
		  
		  MemberVO mem = service.Artist(member); 
		  model.addAttribute("mem", mem);
		  
		  
			/*
			 * ArtDetailVO art = service.ArtDetail(picNo); model.addAttribute("art", art);
			 * 
			 * System.out.println(art);
			 * 
			 * MemberVO name = service.ArtName(memId); model.addAttribute("name", name);
			 */
		  
		  
		  
			return "/art/artDetail"; }
		  
		  
		/* 전시회 */
		  @RequestMapping("/exhibitionList")
		  public String exhibitionList(Model model) {
			  
			  ArrayList<ArtVO> art=service.exList();
			  model.addAttribute("art", art);
			  ArrayList<PictureVO> pic=service.ArtListALL();
			  model.addAttribute("pic", pic);
			  
			  return "art/exhibitionList";
		  }
		  
		  @RequestMapping("/test")
		  public String test() {
			  return "art/test";
		  }
		 
		 
			/* 마이페이지 내 작품 리스트 */
		  @RequestMapping("/myArt")
			
			public String myArt(Model model) {
			
			  ArrayList<PictureVO> pic = service2.ListPicture();

				model.addAttribute("pic",pic);
			
				return "mypage/myPg_myArt"; 	
			}
		  
		  
			/* 마이페이지 내 작품 value값 불러오기 */
		  @RequestMapping("/myArtDate")
		  
		  public String myArtDate(@RequestParam String picNo,Model model) {
			  
		  PictureVO art=service.picDetail(picNo);
		  model.addAttribute("art", art);
		  
			/*
			 * String member=service.picMemId(picNo);
			 * 
			 * MemberVO mem = service.Artist(member); model.addAttribute("mem", mem);
			 */
		  
			return "mypage/updateMyart"; }
		  
		  
		  /* 마이페이지 내 작품 update */
		  	@RequestMapping("/updateArt")
		  public String updateArt(PictureVO vo) {
		  		System.out.println(vo.getPicNo());
		  		System.out.println(vo.getPicTitle());
			  
		  		service.ArtUpdate(vo);
		  		return "redirect:/myArt";
		  
			}
		 

}
