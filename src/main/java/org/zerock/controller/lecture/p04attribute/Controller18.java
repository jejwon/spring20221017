package org.zerock.controller.lecture.p04attribute;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.lecture.JavaBean01;
import org.zerock.domain.lecture.JavaBean02;
import org.zerock.domain.lecture.Student;

@Controller
@RequestMapping("ex18")
public class Controller18 {
	
	//ex18/sub01?name=park&address=seoul&email=abc@daum.net
	@RequestMapping("sub01")
	public void method1(@ModelAttribute("bean") JavaBean01 b) {//model의 bean 객체에 먼저 들어가고 그 다음 b는 같은 참조값을 가짐
		
	}
	
	//ex18/sub02?name=haha&age=17&password=1234&email=def@daum.net
	@RequestMapping("sub02")
	public void method2(@ModelAttribute("bean") JavaBean02 b) {
		b.setAge(17);
		b.setEmail("def@daum.net");
		b.setName("haha");
		b.setPassword("1234");
	}
	
//	@RequestMapping("sub03")
//	public void method3(@ModelAttribute Student s) { //어노테이션에서 사용할 이름과 파라미터명이 같다면 생략 가능
//		s.setClassName("soccer");
//		s.setName("cha");
//		s.setStudentNumber("5");
//		
//		
//	}
	
	@RequestMapping("sub04")
	public String method3(Student s) { //어노테이션까지 생략 가능
		s.setClassName("football");
		s.setName("son");
		s.setStudentNumber("7");
		
		return "ex18/sub03";
	}
	
}














