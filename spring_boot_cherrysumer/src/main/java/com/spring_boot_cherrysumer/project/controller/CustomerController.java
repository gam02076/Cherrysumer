package com.spring_boot_cherrysumer.project.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot_cherrysumer.project.model.CustomerVO;
import com.spring_boot_cherrysumer.project.model.PagingVO;
import com.spring_boot_cherrysumer.project.model.ReplyVO;
import com.spring_boot_cherrysumer.project.service.CustomerService;
import com.spring_boot_cherrysumer.project.service.ReplyService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService service;
	@Autowired
	ReplyService Rservice;

	@RequestMapping("/customerinsert")
	public String customerinsert(Model model, HttpSession session) {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date time = new Date();
		String time1 = format1.format(time);
		String memId = (String) session.getAttribute("sid");
		if (memId == null) {

		}
		model.addAttribute("memId", memId);
		model.addAttribute("time1", time1);

		return "customer/customerinsert";
	}

	@RequestMapping("/customer/customerListAll")
	public String customerListAll2(Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		ArrayList<CustomerVO> cusList = service.CustomerAll2(memId);
		model.addAttribute("cusList", cusList);
		return "customer/customer";
	}

	@RequestMapping("/customerinsert2")
	public String customerinsert2(CustomerVO cus) {

		String a = "비공개";
		String b = "공개";
		String c = "0";
		if (cus.getCuspublic() == null) {
			cus.setCusabc(b);
			cus.setCuspublic(c);
		} else {
			cus.setCusabc(a);
		}

		service.insertCustomer(cus);
		return "redirect:/boardList";
	}

	@RequestMapping("/customer/customerdetailview/{cusNo}")
	public String customerdetailview(@PathVariable int cusNo, Model model, HttpSession session) {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date time = new Date();
		String time1 = format1.format(time);
		String memId = (String) session.getAttribute("sid");
		model.addAttribute("memId", memId);
		model.addAttribute("time1", time1);

		CustomerVO cus = service.detailCustomer(cusNo);
		model.addAttribute("cus", cus);
		String a = "on";

		ArrayList<ReplyVO> reply = Rservice.replyList(cusNo);
		model.addAttribute("reply", reply);
		if (cus.getCuspublic().equals(a)) {

			return "redirect:/confirm/{cusNo}";
		} else {

			return "customer/customerdetailview";
		}
	}

	@RequestMapping("/confirm/{cusNo}")
	public String confirm(@PathVariable String cusNo) {

		return "customer/confirm";
	}

	@RequestMapping("/confirm2/{cusNo}")
	public String confirm2(@PathVariable int cusNo, String cus2, Model model, HttpSession session) {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date time = new Date();
		String time1 = format1.format(time);
		String memId = (String) session.getAttribute("sid");
		model.addAttribute("memId", memId);
		model.addAttribute("time1", time1);

		CustomerVO cus = service.detailCustomer(cusNo);
		model.addAttribute("cus", cus);
		if (cus.getCus().equals(cus2)) {
			// 댓글 조회
			ArrayList<ReplyVO> reply = Rservice.replyList(cusNo);
			model.addAttribute("reply", reply);

			return "customer/customerdetailview";
		} else {
			return "redirect:/confirm/{cusNo}";
		}
	}

	@RequestMapping("/boardList")
	public String boardList(PagingVO vo, Model model, HttpSession session,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {
		String memId = (String) session.getAttribute("sid");
		int total = service.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("memId", memId);
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", service.CustomerAll(vo));
		return "customer/boardPaging";
	}

	@RequestMapping("/CustomerSearch")
	public String CustomerSearch(@RequestParam String keyword, Model model) {
		System.out.println(keyword);
		// 서비스로 전송해서 DB 검색 결과 받아옴
		ArrayList<CustomerVO> viewAll = service.CustomerSearch(keyword);
		model.addAttribute("viewAll", viewAll);

		for (int i = 0; i < viewAll.size(); i++) {
			System.out.println(viewAll.get(i).getCusNo());
		}
		return "customer/customersearch";
	}

	// 댓글 작성
	@RequestMapping("/write")
	public String posttWirte(ReplyVO vo, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		String result = "fail";
		if (memId == null) {

			return result;
		} else {

			Rservice.replyWrite(vo);
			return "redirect:/customer/customerdetailview/" + vo.getCusNo();
		}
	}

	// 댓글 단일 조회 (수정 페이지)
	@RequestMapping("/modify")
	public String getMofidy(@RequestParam("cusNo") int cusNo, @RequestParam("rno") int rno, Model model) {

		ReplyVO vo = new ReplyVO();
		vo.setCusNo(cusNo);
		vo.setRno(rno);

		ReplyVO reply = Rservice.replySelect(vo);

		model.addAttribute("reply", reply);

		return "reply/modify";

	}

	@RequestMapping("/reply/modify")
	public String postModify(ReplyVO vo) {

		Rservice.replyModify(vo);

		return "redirect:/customer/customerdetailview/" + vo.getCusNo();
	}

	@RequestMapping("/delete2")
	public String postDelete(ReplyVO vo) {
		Rservice.replyDelete(vo);
		return "redirect:/customer/customerdetailview/" + vo.getCusNo();
	}

	@RequestMapping("/custumer/deletecustumer/")
	public String deletecustumer(@RequestParam("cusNo") String cusNo) {
		service.deleteCustomer(cusNo);

		return "redirect:/customer/customerListAll";
	}

	@RequestMapping("/custumer/custumer/{cusNo}")
	public String updatecustumerForm(@PathVariable int cusNo, Model model) {
		CustomerVO vo = service.detailCustomer(cusNo);
		model.addAttribute("cus", vo);
		return "customer/custumerupdate";
	}

	@RequestMapping("/cutomer/cutomerupdate")
	public String updatecustomer(CustomerVO cus) {
		service.updateCustomer(cus);
		return "redirect:/customer/customerListAll";
	}
	
	@RequestMapping("/customer/customerreplyAll")
	public String customerreplyAll(Model model, HttpSession session){
		String memId = (String) session.getAttribute("sid");
		ArrayList<ReplyVO> rep = Rservice.replyList2(memId);
		model.addAttribute("rep", rep);
		return "/reply/myreply";
	}

}
