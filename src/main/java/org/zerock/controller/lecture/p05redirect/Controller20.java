package org.zerock.controller.lecture.p05redirect;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex20")
public class Controller20 {
	//redirect 때 데이터 넘겨주는 방법
	
	//쿼리스트링으로 붙여서 넘겨주기
	@RequestMapping("sub01")
	public String method1() {
		return "redirect:/ex20/sub02?name=donald";
	}
	
	@RequestMapping("sub02")
	public String method2(String name) { //@RequestParameter(생략 가능)
		System.out.println(name);
		return null;
	}
	
	@RequestMapping("sub03")
	public String method3() {
		return "redirect:/ex20/sub04?age=20&address=newyork";
	}
	
	@RequestMapping("sub04")
	public String method4(String age, String address) {
		System.out.println(age + address);
		return null;
	}
}