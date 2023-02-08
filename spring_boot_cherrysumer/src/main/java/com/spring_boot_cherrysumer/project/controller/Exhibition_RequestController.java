package com.spring_boot_cherrysumer.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.service.ExhibitionService;

@Controller
public class Exhibition_RequestController {
	@Autowired
	private ExhibitionService service;
	
	
	// 전시회 신청폼 열기
	@RequestMapping("/exhibition_requestForm")
	public String exhibition_requestForm(Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		
		// 회원 Id 전달하고 해당 회원 상세 정보 받아오기 ( 1명의 정보에 관한 정보)
		MemberVO request_memVo = service.ExhRequest_MemberInfo(memId);
		model.addAttribute("request_memVo",request_memVo);
		return "exhibition/exhibition_request";
	}
	
	// 전시회 신청 완료되었다고 메시지 출력.
	
	@RequestMapping("/exhibition/exhibitionRequest")
	public String exhibitionRequest(Model model) {
		return "exhibition/exhibition_requestResultView";
	}
	
	
	// 전시회 신청하면 DB에 저장되어 완료.
	// exhNo는 전달하지 않음 : DB에서 자동 입력.
	@RequestMapping("/exhibition/insertRequest")
	public String insertRequest(ExhibitionVO Evo, ArtVO Avo, // ArtVo는 배열로.
								Model model) {
		// 데이터 저장 안되면 컨트롤러로 안오는것.
		System.out.print("aaaaaaaaaaaaaaaaaaaaaaaa");
		// (1) 전시회 번호 생성
		// 신청 번호 생성 : 오늘 날짜 시분초 + 랜덤 숫자 4개
		long timeNum = System.currentTimeMillis();
		// 날짜 시간 포맷 : HH(24시간제)
		SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
		String strTime = fmt.format(new Date(timeNum));	
		// 랜덤 숫자 4개 생성
		String rNum = "";
		for(int i = 1; i <=4; i++) {
			rNum += (int)(Math.random() * 10);
		}
		
		// 신청 번호
		String exhNo = strTime + rNum;
		// vo에 신청 번호 저장
		Evo.setExhNo(exhNo);
		
		// (2) 주문 정보 저장
		service.insertExhRequest(Evo, Avo);
		
		
		
		// if 문.... 데이터 있으면 있다고 에러 페이지 보여주는걸로.
		// 하나 만들기. (리턴 다른 페이지로 보내기)
		
		
		return "exhibition/exhibition_requestResultView";
	}
}

// 1. 관리자가 전시회 신청내영 보기.
// 링크 걸고 select해서  전시 테이블에서 컨펌이 안 된 것만 출력.
 

// 2. AroVO 배열 바꾸기.
// 작품을 여러 개 보내는데, 현재컨트롤러에서는한 개만 됨.
// 자바스크립트에서 동일    배열로 만들어서 Ajax로 보낼 때 배열로 보내기. 
