package com.spring_boot_cherrysumer.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring_boot_cherrysumer.project.service.ChatbotService;

@RestController
public class ChatbotRestController {
	private ChatbotService chatService;
	
	@Autowired
	public ChatbotRestController(ChatbotService chatService) {	
		this.chatService = chatService;
	}
	
	@RequestMapping("/chatbot")
	public String chatbot(@RequestParam("message") String message) {
		String result  = chatService.main(message); // 질문 메시지 전달하고 답변 텍스트 받아옴.
		System.out.println("챗봇 result = " + result);
		return result;
	}

}
