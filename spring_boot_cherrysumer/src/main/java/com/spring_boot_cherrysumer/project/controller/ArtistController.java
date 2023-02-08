package com.spring_boot_cherrysumer.project.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_cherrysumer.project.model.Exhibition2VO;
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

	/* test */
	@RequestMapping("/test")
	public String test(Model model) {
		ArrayList<PictureVO> art = service2.ListPicture();
		System.out.println(art);
		model.addAttribute("art", art);

		return "art/test";
	}

	/* top 현재 내 포인트 내역 보이기 */
	@RequestMapping("/point")
	public String point(HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		System.out.println(memId);
		int mypoint = service.NowMyPoint(memId);
		System.out.println(mypoint);

		model.addAttribute("point", mypoint);

		return "layout/top";
	}

	/* 아티스트 리스트 */
	@RequestMapping("/artist")
	public String artistAll(Model model) {

		ArrayList<MemberVO> artList = service.ArtistAll();
		model.addAttribute("artList", artList);

		return "art/artistList";
	}

	/* 아티스트 모달창 DB전송 */
	@RequestMapping("/artistModal")
	public String artistModal(@RequestParam String memId, Model model) {

		MemberVO name = service.Artist(memId);
		model.addAttribute("name", name);

		ArrayList<PictureVO> art = service.ArtList(memId);
		model.addAttribute("art", art);

		return "art/artistModal";
	}

	/* 사진상세정보 DB전송 */
	@RequestMapping("/artDetail")
	public String artDetail(@RequestParam String picNo, Model model) {
		PictureVO art = service.picDetail(picNo);
		model.addAttribute("art", art);

		String member = service.picMemId(picNo);

		MemberVO mem = service.Artist(member);
		model.addAttribute("mem", mem);

		return "art/artDetail";
	}

	/* 전시회 */
	@RequestMapping("/exhibitionList")
	public String exhibitionList(Model model) {

		// 현재 날짜 구하기
		LocalDate now = LocalDate.now();

		// 포맷 정의
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

		// 포맷 적용
		String today = now.format(formatter);


		ArrayList<Exhibition2VO> art = service.exList2(today); //현재 전시중
		model.addAttribute("art", art);
		
		ArrayList<Exhibition2VO> comingart = service.comingList(today); //전시 예정 Coming Soon
		model.addAttribute("comingart", comingart);

		return "art/exhibitionList";
	}

	/* 마이페이지 내 작품 리스트 */
	@RequestMapping("/myArt")
	public String myArt(Model model, HttpSession session) {

		String memId = (String) session.getAttribute("sid");

		ArrayList<PictureVO> art = service.ArtList(memId);

		model.addAttribute("art", art);

		return "mypage/myPg_myArt";
	}

	/* 마이페이지 내 작품 상세정보 불러오기 */
	@RequestMapping("/myArtDate")
	public String myArtDate(@RequestParam String picNo, Model model) {
		System.out.println(picNo);
		PictureVO art = service.picDetail(picNo);
		model.addAttribute("art", art);

		return "mypage/updateMyart";
	}

	/* 마이페이지 내 작품 update */
	@RequestMapping("/updateArt")
	public String updateArt(PictureVO vo) {

		service.ArtUpdate(vo);
		return "redirect:/myArt";

	}

	/* 마이페이지 내 작품 삭제 버튼(delete) 클릭시 데이터 삭제 */
	@ResponseBody
	@RequestMapping("/delete")
	public String delete(@RequestParam String picNo, Model model, HttpSession session) {

		service.myArtDelete(picNo);

		/*
		 * String memId = (String)session.getAttribute("sid");
		 * 
		 * ArrayList<PictureVO> art = service.ArtList(memId);
		 * 
		 * model.addAttribute("art", art);
		 */

		return "result";

	}

}
