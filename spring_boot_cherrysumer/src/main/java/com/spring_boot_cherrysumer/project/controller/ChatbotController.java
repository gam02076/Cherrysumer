package com.spring_boot_cherrysumer.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_cherrysumer.project.service.ChatbotService;

@Controller
public class ChatbotController {
	private ChatbotService chatService;
	
	// 생성자 기반 DI(의존성 주입)로 변경
	@Autowired
	public ChatbotController(ChatbotService chatService) {
		this.chatService = chatService;
	}
	
	// 챗봇
	@RequestMapping("/chatbotForm")
	public String chatbotForm() {
		return "chatbot";
	}
}
