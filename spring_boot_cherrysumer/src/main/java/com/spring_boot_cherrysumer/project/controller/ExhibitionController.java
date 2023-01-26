package com.spring_boot_cherrysumer.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
									   	 @PathVariable String memId, 
									     Model model){
		ExhibitionVO evo = service.detailViewExhibibition(exhNo);
		MemberVO memVo = service.getMemberInfo(memId);
		
		model.addAttribute("evo",evo);
		model.addAttribute("memVo",memVo);
		
		return "exhibition/exhibition_1";
	}

	 //Ajax로 대표 이미지 1개 업로드
	@RequestMapping("/exhibition_requestForm")
	public String exhibition_requestForm() {
		return "exhibition/exhibition_request";
	}

//	 //여러 개의 파일 업로드
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
