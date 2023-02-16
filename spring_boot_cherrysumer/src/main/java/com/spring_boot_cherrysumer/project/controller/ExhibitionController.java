package com.spring_boot_cherrysumer.project.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.service.ExhibitionService;

@Controller
public class ExhibitionController {
	@Autowired
	private ExhibitionService service;

	// 전시회 상세 관람(조회)
	@RequestMapping("/exhibition/detailViewExhibibition/{exhNo}/{memId}")
	public String detailViewExhibibition(@PathVariable String exhNo,
									   	 @PathVariable String memId,  // get 방식.
									   	 // @RequestParam("artNo") String artNo, // url로 전달 안할꺼니까? //post 방식이라 같이 못 씀.
									     Model model){
		
		System.out.printf(exhNo);
		System.out.printf(memId);
		ExhibitionVO evo = service.detailViewExhibibition(exhNo);
		MemberVO memVo = service.getMemberInfo(evo.getMemId());
	
		// ArratList로.
		// artvo. 타입으로 서비스 호출하고, 결과 받으면 모델에서 addAttribute으로 artList함.
		// 상품 여러개 받듯이 artList로 뷰페이지에서 출력. view페이지에서 for문. artList. ~~
		ArrayList<ArtVO> artList = service.getArtInfo(evo.getMemId()); // 전시회 번호 없이 작가꺼 다 나옴.
		
		// memId와 exhNo와 해시맵으로 넘겨서 매퍼로 보냄.
	
		
		// 전시회에 전시회 정보출력하기 위해 model에 저장
		model.addAttribute("evo",evo);
		model.addAttribute("memVo",memVo);
		model.addAttribute("artList", artList);
		
		return "exhibition/exhibition_1";
	}
	

	
	
//	// 파일 업로드 폼 열기
//	@RequestMapping("/Exh_RequestForm")
//	public String Exh_RequestForm() {
//		return "exhibition/exhibition_request";
//	}

	 //Ajax로 대표 이미지 1개 업로드
//	@RequestMapping("/exhibition_requestForm")
//	public String exhibition_requestForm() {
//		return "exhibition/exhibition_request";
//	}
	
//	// upload 폴더에 이미지 파일 업로드
//	@ResponseBody
//	@RequestMapping("/exhibition_request")
//	public String exhibition_requestForm(@RequestParam("uploadFile") MultipartFile file) throws IOException{
//		
//		// 1. 이미지 저장 경로 설정 
//		String uploadPath = "/Users/pizza/STS3/SpringWorkspace/cherrysumer_upload/";
//		//String uploadPath = "/Users/shimgyumin/java_class/cherrysumer_upload/";
//		//String uploadPath = "C:/springWorkspace/upload/"; 
//		
//		// 2. 원본 파일 이름 저장
//		String originalFileName = file.getOriginalFilename();
//		
//		// 3. 파일(객체) 생성
//		File sendFile = new File(uploadPath + originalFileName);
//		
//		// 4. 서버로 전송
//		file.transferTo(sendFile);
//		
//		String result = "success";
//		return result;
//	}
	
	 //여러 개의 파일 업로드
//	@ResponseBody
//	@RequestMapping("/fileUploadMultiple")
//	public ArrayList<String> fileUploadMultiple(@RequestParam("uploadFileMulti") ArrayList<MultipartFile> files) throws IOException{
//		
//		System.out.println("aa");
//		
//		//1. 파일 저장 경로 설정
//		String uploadPath = "/Users/pizza/STS3/SpringWorkspace/cherrysumer_upload/";
//		//String uploadPath = "/Users/shimgyumin/java_class/cherrysumer_upload/";
//		//String uploadPath = "C:/springWorkspace/upload/"; 
//		
//		// 여러 개의 파일 이름을 저장한 리스트 변수
//		ArrayList<String> originalFileNameList = new ArrayList<String>();
//		
//		for(MultipartFile file : files) {
//			//2. 원본파일 이름 저장
//			String originalFileName = file.getOriginalFilename();
//			// 원본 파일 이름을 리스트에 저장 
//			originalFileNameList.add(originalFileName);
//			
//			// 3. 파일 이름이 중복되지 않도록 파일 이름 변경
//			// 서버에 저장할 파일 이름 설정 :UUID
//			UUID uuid = UUID.randomUUID();
//			String savedFileName = uuid.toString() + "_" + originalFileName;
//			
//			// 4. 파일(객체) 생성
//			File sendFile = new File(uploadPath + savedFileName);
//			
//			// 5. 서버로 전송
//			file.transferTo(sendFile);
//		}		
//		return originalFileNameList;
//		
//	}
}
