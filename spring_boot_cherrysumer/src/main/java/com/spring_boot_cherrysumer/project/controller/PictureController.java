package com.spring_boot_cherrysumer.project.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring_boot_cherrysumer.project.model.Exhibition2VO;
import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.GreenEyesVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;
import com.spring_boot_cherrysumer.project.service.ArtistService;
import com.spring_boot_cherrysumer.project.service.ExhibitionService;
import com.spring_boot_cherrysumer.project.service.GreenEyesService;
import com.spring_boot_cherrysumer.project.service.PictureService;

@Controller
public class PictureController {
	@Autowired
	PictureService service;

	@Autowired
	ArtistService service2;

	@Autowired
	private ArtistService Service;

	private GreenEyesService greenService;

	// 생성자 기반 DI(의존성 주입)로 변경
	@Autowired
	public PictureController(GreenEyesService greenService) {
		this.greenService = greenService;
	}

	@RequestMapping("/picture")
	public String picture() {
		return "/picture/picture2";
	}
	
	/* (관리자) 사진 승인 안됨 버튼 눌렀을 때 */
	@ResponseBody
	@RequestMapping("/nopass")
	public int delete(@RequestParam int picNo) {
			service.PicNopass(picNo);
		return 1;
	}
	
	
	/* (관리자) 사진 승인 버튼 눌렀을 때 */
	@ResponseBody
	@RequestMapping("/pass")
	public String pass(@RequestParam int picNo) {

		service.PicPass(picNo);
		return "result";

	}
	
@RequestMapping("/PhotoFilter")
	
	public String PhotoFilter(Model model) {
		
		ArrayList<PictureVO> pic = service.greenEyeFilter();
		
		model.addAttribute("pic", pic);
		
		return "/admin/PhotoFilter";
		
	}



@RequestMapping("/register")
public String insert(PictureVO vo, @RequestParam("upload") MultipartFile file, Model model) throws IOException {
	String result = ""; // -> 매개변수:String, return:String
 System.out.println(vo.getMemId());
	// String uploadPath="/Users/shimgyumin/java_class/cherrysumer_upload/";
	// String uploadPath = "/Users/pizza/STS3/SpringWorkspace/cherrysumer_upload/";
//	String uploadPath = "C:/springWorkspace/upload/";
	String uploadPath = "/usr/local/project/upload/upload/";

	// 파일명 추출
	String orgName = file.getOriginalFilename();
	//System.out.println("원래 파일명 : " + orgName); // orgName:출력

	UUID uuid = UUID.randomUUID();
	String savedFileName = uuid.toString() + "_" + orgName;
	//System.out.println("바뀐 파일명 : " + savedFileName); // savedFileName:출력

	File sendFile = new File(uploadPath + savedFileName);

	file.transferTo(sendFile);

	model.addAttribute(savedFileName, sendFile);

	vo.picimg = savedFileName;

	// 그린아이
	ArrayList<GreenEyesVO> GreenEyesResult = greenService.GreenEye(savedFileName); // 그린아이 서버 실행
	double resultNum = GreenEyesResult.get(0).getConfidence();

	for (int i = 1; i < GreenEyesResult.size(); i++) {
		System.out.print(i + "번째 : " + GreenEyesResult.get(i).getValue() + " : ");
		System.out.println(GreenEyesResult.get(i).getConfidence());
		// confidence : 0.6094779968261719

		double con = GreenEyesResult.get(i).getConfidence();
		if (Double.compare(resultNum, con) == 0) { // 결과 값이랑 같으면
			result = GreenEyesResult.get(i).getValue(); // result에 넣음.
			if(i!=2) {
                vo.setGood(2);

                //System.out.println("불통과입니다");
			}
			break;
		}
	}
	
	service.insert(vo);

	return "/picture/picture2";

}

//메인 컨트롤러//	메인 컨트롤러//	메인 컨트롤러//	메인 컨트롤러//	메인 컨트롤러//	메인 컨트롤러	
@RequestMapping("/")

public String pictureList1(Model model) {
	

	// 현재 날짜 구하기
	LocalDate now = LocalDate.now();

	// 포맷 정의
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

	// 포맷 적용
	String today = now.format(formatter);


	ArrayList<Exhibition2VO> ex = service2.exList3(today); //현재 전시중
	
	 
	model.addAttribute("ex", ex);


	
ArrayList<PictureVO> pic = service.ListPicture1();
ArrayList<PictureVO> pic2 = service.ListPicture3();
model.addAttribute("pic",pic);
model.addAttribute("pic2",pic2);

	return "NewFile"; 	
}
//메인 컨트롤러//	메인 컨트롤러//	메인 컨트롤러//	메인 컨트롤러//	메인 컨트롤러//	메인 컨트롤러			



@RequestMapping("/picture/picture_list/")

public String pictureList(Model model) {

ArrayList<PictureVO> pic = service.ListPicture();

model.addAttribute("pic",pic);

	return "/picture/picture_list"; 	
}
	
	
@RequestMapping("/picture/photo_list/")
	
	public String photo_list(Model model) {
	
	ArrayList<PictureVO> photo = service.ListPicture();

	model.addAttribute("photo",photo);
	
		return "/picture/photo_list"; 	
	
}

@RequestMapping("/picture/registerform/") 
public String picture1() {
	return "/picture/register"; 
}		


@RequestMapping("/picture/searchResult")
public String Search (@RequestParam String keyword, Model model) {
	
	ArrayList<PictureVO> searchList = service.Search(keyword);
	model.addAttribute("searchList", searchList);
	
	
	return"picture/picture_listSearch";
	
}

@RequestMapping("/main") 
public String main() {
	return "/picture/main"; 
}
}
