package org.zerock.controller.lecture.p04attribute;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.lecture.JavaBean03;
import org.zerock.domain.lecture.Student;

@Controller
@RequestMapping("ex17")
public class Controller17 {
	@RequestMapping("sub01")
	public void method1(Model model) {
		model.addAttribute("myName", "cha cha");
	}

	@RequestMapping("sub02")
	public void method2(Model model) {
		model.addAttribute("email", "abc@daum.net");
	}
	
	@RequestMapping("sub03")
	public void method3(Model model) {
		model.addAttribute("name", "cha cha");
		model.addAttribute("email", "abc@daum.net");
		model.addAttribute("age", 47);
		model.addAttribute("address", "seoul");
	}
	
	@RequestMapping("sub04")
	public void method4(Model model) {
		JavaBean03 obj = new JavaBean03();
		obj.setAvg(9.99);
		obj.setClassName("spring");
		obj.setLocation("seoul");
		obj.setScore(100);
		obj.setStudentNumber("s80");
		
		model.addAttribute("student", obj);
		
	}
	@RequestMapping("sub05")
	public void method5(Model model) {
		Student s = new Student();
		s.setName("park");
		s.setClassName("soccer");
		s.setStudentNumber("13");
		
//		model.addAttributes("student", s);
		model.addAttribute(s);
		model.addAttribute("hello"); //jsp에서 lowercase로 꺼내기(이름x->string)
	}

	
	
	
}	
