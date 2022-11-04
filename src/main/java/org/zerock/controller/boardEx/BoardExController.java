package org.zerock.controller.boardEx;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domainEx.BoardEx.BoardDtoEx;
import org.zerock.serviceEx.boardEx.BoardServiceEx;

@Controller
@RequestMapping("boardEx")
public class BoardExController {
	@Autowired
	private BoardServiceEx service;
	
	@GetMapping("registerEx")
	public void register() {
		//게시물 작성 view로 포워드
		//링크 자체로 기능 /WEB-INF/views/boardEx/registerEx.jsp
	}
	
	@PostMapping("registerEx")
	public String register(BoardDtoEx board) {
		//request param 수집, 가공
		
		//business logic
		int cnt = service.register(board); //의존성 주입
	}
	
}
