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

import com.spring_boot_cherrysumer.project.model.CustomerVO;
import com.spring_boot_cherrysumer.project.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService service;
	

	@RequestMapping("/customerinsert")
	public String customerinsert(Model model,HttpSession session) {
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
		Date time = new Date();
		String time1 = format1.format(time);
		String memId=(String) session.getAttribute("sid");
		model.addAttribute("memId",memId);
		model.addAttribute("time1",time1);

		return "customer/customerinsert";
	}
	@RequestMapping("/customer/customerListAll")
	public String customerListAll(Model model) {
		ArrayList<CustomerVO> cusList=service.CustomerAll();
		model.addAttribute("cusList",cusList);
		return "customer/customer";
		
	}
	@RequestMapping("/customerinsert2")
	public String customerinsert2(CustomerVO cus) {

		String a = "비공개";
		String b = "공개";
		String c="0";
		if(cus.getCuspublic()==null) {
			cus.setCusabc(b);
			cus.setCuspublic(c);
		}else {
			cus.setCusabc(a);
		}
			
		service.insertCustomer(cus);
		return "redirect:/customer/customerListAll";
	}
	@RequestMapping("/customer/customerdetailview/{cusNo}")
	public String customerdetailview(@PathVariable String cusNo, Model model) {
		CustomerVO cus = service.detailCustomer(cusNo);
		model.addAttribute("cus",cus);
		String a="on";
		if(cus.getCuspublic().equals(a)) {

			return "redirect:/confirm/{cusNo}";
		}else {
		
		return "customer/customerdetailview";
		}
	}
	
	@RequestMapping("/customer/deletecustomer/{cusNo}")
	public String deletecustomer(@PathVariable String cusNo ) {
		service.deleteCustomer(cusNo);
		return "redirect:/customer/customerListAll";
	}
	
	@RequestMapping("/confirm/{cusNo}")
	public String confirm(@PathVariable String cusNo){
		
		return "customer/confirm";
	}
	
	  @RequestMapping("/confirm2/{cusNo}") 
	  public String confirm2(@PathVariable String cusNo,String cus2, Model model) { 
		  System.out.print(cus2);
			CustomerVO cus = service.detailCustomer(cusNo);
			model.addAttribute("cus",cus);
			 System.out.print(cus.getCus());
			if(cus.getCus().equals(cus2)) {
		  return "customer/customerdetailview";
		  }else {
			  return "redirect:/confirm/{cusNo}";
		  }
		  }
	 
}
