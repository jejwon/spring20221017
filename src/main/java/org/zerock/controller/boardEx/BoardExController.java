package org.zerock.controller.boardEx;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
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
	public String register(BoardDtoEx board, RedirectAttributes rttr) { //session에 담아도 됨
		//request param 수집, 가공
		
		//business logic
		int cnt = service.register(board); //의존성 주입
		
		//modal message -> redirect 할 때 데이터 넘겨주기
		if(cnt == 1) {
			rttr.addFlashAttribute("message", "새 게시물이 등록되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "새 게시물이 등록되지 않았습니다.");
		}
		
		return "redirect:/boardEx/listEx";
	}
	
}
