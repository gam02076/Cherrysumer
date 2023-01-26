package com.spring_boot_cherrysumer.project.controller;




import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String updatepage(MypageVO vo) {
		System.out.print(vo.getMemId());
		service.updatepage(vo);
		return "redirect:/Mypage";
	}

}
