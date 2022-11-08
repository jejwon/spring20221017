package org.zerock.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.board.BoardDto1;
import org.zerock.service.board.BoardService1;

@Controller
@RequestMapping("board1")
public class BoardCon {
	@Autowired
	private BoardService1 service;
	
	@GetMapping("registerEx")
	public void register() {
		//메소드 자체로 링크 생성
	}
	
	@PostMapping("registerEx")
	public String register(BoardDto1 board) {
		service.register();
		return "redirect:boardEx/listEx";
	}
	
	@GetMapping("listEx")
	public void list() {
		List<BoardDto1> list = service.listBoard();
	}
	
	
}
