package com.spring_boot_cherrysumer.project.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
	

	// 전시회 신청 완료되었다고 메시지 출력해주는 페이지.
	@RequestMapping("/exhibition/exhibitionRequest")
	public String exhibitionRequest(Model model) {
		return "exhibition/exhibition_requestResultView";
	}
	
	// 전시회 신청하면 DB에 저장되어 완료.
	// exhNo는 전달하지 않음 : DB에서 자동 입력.
	// exhConfirm 기본으로 X 두기.
	
	// form이 submit 했을 때 일어나는 기본 이벤트.
	@RequestMapping("/exhibition/insertRequest")
	public String insertRequest(ExhibitionVO Evo, HttpSession session,
								//ArtVO Avo, // ArtVo는 배열로.			
								Model model) {
		// 데이터 저장 안되면 컨트롤러로 안오는것. 오는지 확인해보자.
		// System.out.print("aaaaaaaaaaaaaaaaaaaaaaaa");
		
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
		
		String memId = (String)session.getAttribute("sid");
		Evo.setMemId(memId);
		
		// (2) 전시 정보 저장
		 service.insertExhRequest(Evo);
		
		
		
		// if 문.... 데이터 있으면 있다고 에러 페이지 보여주는걸로.
		// 하나 만들기. (리턴 다른 페이지로 보내기)				
		return "exhibition/exhibition_requestResultView";
	}
	
	// 작품 업로드 및 저장
	// 기본 이벤트 두고 ajax로 추가 이벤트 일으킴.
	@ResponseBody
	@RequestMapping("/insert_exhibition_request_art")
	public String art(@RequestParam("upload-image") MultipartFile[] file,
								@RequestParam("artMain") String artMain,
							    @RequestParam("artName_kr") String artName_kr,
							    @RequestParam("artName_eng") String artName_eng,
							    @RequestParam("artPrice") String artPrice,
							    @RequestParam("artDate") String artDate,
							    @RequestParam("artSize") String artSize,
							    @RequestParam("artExplain") String artExplain,
							    @RequestParam("ctgId") String ctgId,
							    HttpSession session) throws IOException {		
		// 뭐가 전달되는지 확인하기 이해 출력 - 테스트
		//System.out.println(artMain);
		//System.out.println(artName_kr);
		//System.out.println(artName_eng);
		//System.out.println(artPrice);
		//System.out.println(artDate);
		//System.out.println(artSize);
		//System.out.println(artExplain);		
		//System.out.println(ctgId);
			
		// 문자열에서 구분자(쉼표)로 분리해서 배열로 생성
		String[] artMainArr = artMain.toString().split(",");
		String[] artName_krArr = artName_kr.toString().split(",");
		String[] artName_engArr = artName_eng.toString().split(",");
		String[] artPriceArr = artPrice.toString().split(",");
		String[] artDateArr = artDate.toString().split(",");
		String[] artSizeArr = artSize.toString().split(",");
		String[] artExplainArr = artExplain.toString().split(",");
		String[] ctgIdArr = ctgId.toString().split(",");
		
		String memId = (String)session.getAttribute("sid");				
		
		for(int i=0; i<file.length; i++) {
			// (1) 파일 업로드
			
			// 1. 파일 저장 경로 설정 : 실제 서비스 되는 위치 (프로젝트 외부에 저장)
			// String uploadPath = "C:/upload/";
			// String uploadPath = "C:/springWorkspace/upload/";
			// String uploadPath="/Users/shimgyumin/java_class/cherrysumer_upload/";
			// String uploadPath = "/Users/pizza/STS3/SpringWorkspace/cherrysumer_upload/";
			String uploadPath =  "file:/usr/local/project/upload/upload/";
			// 마지막에 / 있어야 함
			
			// 2. 원본 파일 이름 알아오기
			String originalFileName = file[i].getOriginalFilename();
			String filePathName = uploadPath + originalFileName;
		    System.out.println("file: " +originalFileName);
			
			// 3. 파일 생성
			File newFile = new File(filePathName);
			
			// 4. 서버로 전송
			file[i].transferTo(newFile);					
			
			// 작품 저장
			ArtVO vo = new ArtVO();
			vo.setArtMain(artMainArr[i]);
			vo.setArtName_kr(artName_krArr[i]);
			vo.setArtName_eng(artName_engArr[i]);
			vo.setArtPrice(Integer.parseInt(artPriceArr[i]));
			vo.setArtDate(Integer.parseInt(artDateArr[i]));
			vo.setArtSize(artSizeArr[i]);
			vo.setArtExplain(artExplainArr[i]);
			vo.setCtgId(ctgIdArr[i]);
			vo.setArtImg(originalFileName);
			vo.setMemId(memId);
			
			// DB에 저장
			service.insertExhRequestArt(vo);
		}		
		
		return "등록 성공";
	}	
	// 1. 관리자가 전시회 신청내역 보기.
	// 링크 걸고 select해서  전시 테이블에서 컨펌이 안 된 것만 출력. 
	// MyBatis에서 (mapper에서) select해서 뿌리는 것. 하나든 두개든 컨펌 말고 (전체 상품 보기)
	 

	// 2. AroVO 배열 바꾸기.
	// 작품을 여러 개 보내는데, 현재컨트롤러에서는한 개만 됨.
	// 자바스크립트에서 동일    배열로 만들어서 Ajax로 보낼 때 배열로 보내기. 
	// 혹은 json에서 string으로 파싱해도 됨.

	
	
	
	// 전시회 신청 목록 (관리자 페이지)
	@RequestMapping("/exhibition/requestList")
	public String viewRequestListAll(Model model) {		// @RequestParam은 post 방식으로 받아야 된다.
		ArrayList<ExhibitionVO> exhList = service.listAllRequest();
		
		
		// 전시회 정보를 for문을 돌려서 
		for(int i=0; i<exhList.size(); i++) {
			//memId를 가져와서 
			String memId = exhList.get(i).getMemId(); // 갖고오는 memId
			// MemberVO 정보를 찾아서 갖고옴.(getMemberInfo2)
			MemberVO memVO = service.getMemberInfo2(memId);
			// 원하는 정보만 전시회 정보에 넣어줌.
			exhList.get(i).setMemName(memVO.getMemName()); 
		}
		
		model.addAttribute("exhList",exhList);
		// 신청 목록에 신청자 정보 출력하기 위해 model에 저장.
		
		return "exhibition/exhibition_requestListForm";
	}
	
}




