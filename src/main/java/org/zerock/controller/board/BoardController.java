package org.zerock.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.board.BoardDto;
import org.zerock.service.board.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	@Autowired
	private BoardService service;
	
	@GetMapping("register")
	public void register() {
		//게시물 작성 view로 포워드
		//링크 자체 /WEB-INF/views/board/register.jsp
	}
	
	@PostMapping("register")
	public String register(BoardDto board) {
		//request param 수집/가공
		System.out.println(board);
		
		//business logic
		service.register(board); //의존성 주입
		
		// /board/list로 redirect
		return "redirect:/board/list";
	}
	
	@GetMapping("list")
	public void list(Model model) {
		//request param
		//business logic
		List<BoardDto> list = service.listBoard();
		//add attribute
		model.addAttribute("boardList", list); //jsp이름 참고
		//forward
	}
	@GetMapping("get")
	public void get(@RequestParam(name="id") int id, Model model) { //@requestParam 생략 가능
		//req param
		//business logic(db에서 게시물 가져오기)
		BoardDto board = service.get(id);
		
		//add attribute
		model.addAttribute("board", board);
		//forward. redirect
	}
	
	@GetMapping("modify")
	public void modify(int id, Model model) {
		BoardDto board = service.get(id);
		model.addAttribute("board", board);
	}
	
	@PostMapping("modify")
	public String modify(BoardDto board) {
		service.update(board);
		
		return "redirect:/board/list";
	}
	
	@PostMapping("remove")
	public String remove(int id) {
		service.remove(id);
		
		return "redirect:/board/list";
	}
}
