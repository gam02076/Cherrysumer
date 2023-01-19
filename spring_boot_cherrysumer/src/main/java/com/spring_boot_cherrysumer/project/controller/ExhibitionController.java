package com.spring_boot_cherrysumer.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.service.ExhibitionService;

@Controller
public class ExhibitionController {
	@Autowired
	private ExhibitionService service;
	

	// 전시회1 상세 관람(조회)
	@RequestMapping("/detailExhibibition1/{exhNo}")
	public String detailExhibibition1(@PathVariable String exhNo, Model model){
		ExhibitionVO evo = service.detailExhibibition1(exhNo);
		model.addAttribute("evo",evo);
		
		return "exhibition/exhibition_1";
	}
	
	// 파일 업로드 폼 열기
	@RequestMapping("/Exh_RequestForm")
	public String Exh_RequestForm() {
		return "exhibition/exhibition_requestForm";
	}
	
	// 대표 이미지 1개 업로드
	@RequestMapping("/fileUpload")
	public String FileUpload(@RequestParam("uploadFile") MultipartFile file,
							Model model) throws IOException{
		
		// 1. 이미지 저장 경로 설정 
		//String uploadPath = "/Users/pizza/STS3/SpringWorkspace/cherrysumer_upload/";
		//String uploadPath = "file:////Users/shimgyumin/java_class/cherrysumer_upload/";
		String uploadPath = "C:/springWorkspace/upload/"; 
		
		// 2. 원본 파일 이름 저장
		String originalFileName = file.getOriginalFilename();
		
		// 3. 파일 이름이 중복되지 않도록 파일 이름 변경
		// 서버에 저장할 파일 이름 설정 : UUID 사용
		UUID uuid = UUID.randomUUID();
		String savedFileName = uuid.toString() + "_" + originalFileName;
		
		// 4. 파일(객체) 생성
		File sendFile = new File(uploadPath + savedFileName);
		
		// 5. 서버로 전송
		file.transferTo(sendFile);
		
		// 웹 브라우저에서 원본 파일명 출력 : Model로 지정
		model.addAttribute("originalFileName",originalFileName);
		
		
		return "exhibition/exhibition_UploadResultView";
	}


}
