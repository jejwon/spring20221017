package org.zerock.controller.board;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.board.BoardDto;
import org.zerock.domain.board.PageInfo;
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
	public String register(BoardDto board, RedirectAttributes rttr) { //session ok, query string ok
		//request param 수집/가공
		System.out.println(board);
		
		//business logic
		int cnt = service.register(board); //의존성 주입
		
		//modal message->redirect할 때 데이터 넘겨주기
		if(cnt == 1) {
			rttr.addFlashAttribute("message", "새 게시물이 등록되었습니다."); //query string으로 노출 안됨
		} else {
			rttr.addFlashAttribute("message", "새 게시물이 등록되지 않았습니다.");
		} // redirectAttribute->model(session에 잠깐 넣었다가 지워짐)
		
		// /board/list로 redirect
		return "redirect:/board/list";
	}
	
	// 위 list메소드 파라미터 PageInfo에 일어나는 일을 풀어서 작성
	@GetMapping("list")
	public void list(
			@RequestParam(name="page", defaultValue="1") int page,
			@RequestParam(name="q", defaultValue="") String keyword,
//			HttpServletRequest request,
			PageInfo pageInfo,
//			@ModelAttribute("pageInfo") PageInfo pageInfo,  //model 객체 (생략)
			Model model) {
		//request param
//		PageInfo pageInfo = new PageInfo();
//		pageInfo.setLastPageNumber(Integer.parseInt(request.getParameter("lastPageNumber")));
//		model.addAttribute("pageInfo", pageInfo);
		//business logic
		List<BoardDto> list = service.listBoard(page, keyword, pageInfo);
		//add attribute
		model.addAttribute("boardList", list); //jsp이름 참고
		//forward
	}
	
	@GetMapping("get")
	public void get(@RequestParam(name="id") int id, Model model) { //@requestParam 생략 가능 (query string이 들어감)
		//req param
		//business logic(db에서 게시물 가져오기)
		BoardDto board = service.get(id);
		
		//add attribute
		model.addAttribute("board", board);
		//forward. redirect
	}
	
	@GetMapping("modify")
	public void modify(int id, Model model) { //model 사용한 이유: forward하려고
		BoardDto board = service.get(id);
		model.addAttribute("board", board);
	}
	
	@PostMapping("modify")
	public String modify(BoardDto board, RedirectAttributes rttr) { //redirect는 session을 거쳐야함
		int cnt = service.update(board);
		

		if(cnt == 1) {
			rttr.addFlashAttribute("message", board.getId() + "번 게시물이 수정되었습니다.");
		} else {
			rttr.addFlashAttribute("message", board.getId() + "번 게시물이 수정되지 않았습니다.");
		}
		
		return "redirect:/board/list";
	}
	
	@PostMapping("remove")
	public String remove(int id, RedirectAttributes rttr) { 
		int cnt = service.remove(id);
		
		if(cnt == 1) {
			rttr.addFlashAttribute("message", id + "번 게시물이 삭제되었습니다.");
		} else {
			rttr.addFlashAttribute("message", id + "번 게시물이 삭제되지 않았습니다.");
		}
		
		return "redirect:/board/list";
	}
}
