package com.spring_boot_cherrysumer.project.controller;




import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring_boot_cherrysumer.project.model.MypageVO;
import com.spring_boot_cherrysumer.project.service.MypageService;

@Controller
public class MypageController {
	@Autowired
	private MypageService service; 

	@RequestMapping("/Mypage")
	public String readpage2(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		  MypageVO vo = service.readpage(memId);
		  model.addAttribute("vo", vo);

		return "mypage/Mypage";
	}
	@RequestMapping("/Mypage2")
	public String readpage(Model model,HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		  MypageVO vo = service.readpage(memId);
		  model.addAttribute("vo", vo);
		return "mypage/Mypage2";
	}
	@RequestMapping("/Mypage2/update")
	public String updatepage(MypageVO vo,@RequestParam("upload") MultipartFile file,
			  Model model) throws IOException {
		// 1. 파일 저장 경로 설정 : C:/springWorkspace/upload/
				// 마지막에 / 있어야 함
				String uploadPath = "C:/springWorkspace/upload/";
				
				// 2. 원본 파일 이름 저장
				String originalFileName = file.getOriginalFilename();
				
				// 3. 파일 이름이 중복되지 않도록 파일 이름 변경 
				// 서버에 저장할 파일 이름 설정 : UUID 사용
				UUID uuid = UUID.randomUUID();
				String savedFileName = uuid.toString() + "_" + originalFileName;
				
				// 4. 파일 (객체) 생성
				File sendFile = new File(uploadPath + savedFileName);
				
				// 5. 서버로 전송
				file.transferTo(sendFile);
				
				// 웹 브라우저에서 원본 파일명 출력 : Model로 지정
				model.addAttribute("originalFileName", originalFileName);
				
				vo.setMemimg2(savedFileName);
		service.updatepage(vo);
		return "redirect:/Mypage";
	}
}
