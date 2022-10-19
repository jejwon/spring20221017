package org.zerock.controller.lecture.p05redirect;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex19")
public class Controller19 {
	@RequestMapping("sub01")
	public void method1(HttpServletResponse response) throws IOException {
		//redirect response(다른 데로 가라는 응답)
		String location = "sub02";
		response.sendRedirect(location);
	}
	
	
	@RequestMapping("sub03")
	public String method2() {
		return "redirect:sub04";
	}
	
	@RequestMapping("sub05")
	public String method3() {
		return "redirect:sub06";
	}
	
	@RequestMapping("sub07")
	public void method7(HttpServletRequest request,  HttpServletResponse response) throws IOException {
		String location = request.getContextPath() + "/ex19/sub08"; //절대 경로일 때 바뀔 수 있는 부분은 request로 얻어오기(dispatcher)
		response.sendRedirect(location);
	}
	
	@RequestMapping("sub09")
	public String method9() {
		return "redirect:/ex19/sub10";
	}
	
	@RequestMapping("sub11")
	public String method11() {
		return "redirect:/ex19/sub12";
	}
	
}
