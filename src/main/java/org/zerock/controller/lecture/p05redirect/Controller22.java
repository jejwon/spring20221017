package org.zerock.controller.lecture.p05redirect;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.lecture.JavaBean03;
import org.zerock.domain.lecture.Student;

@Controller
@RequestMapping("ex22")
public class Controller22 {
	@RequestMapping("sub01")
	public String method1(Model model) {
		model.addAttribute("name", "park");
		return "redirect:/ex22/sub02";
	}
	
	@RequestMapping("sub02")
	public void method2(Model model){
		boolean hasName = model.containsAttribute("name");
		System.out.println(hasName); //false-다른 객체
	}
	@RequestMapping("sub03")
	public String method3(HttpSession session) {
		session.setAttribute("name", "park");
		return "redirect:/ex22/sub04";
	}
	
	@RequestMapping("sub04")
	public void method4(HttpSession session) { 
		String name = (String) session.getAttribute("name"); //위험
		System.out.println(name); 
	}
	@RequestMapping("sub05")
	public String method5(HttpSession session) {
		Student s = new Student();
		s.setClassName("spring");
		s.setName("cha");
		s.setStudentNumber("13");
		
		session.setAttribute("student", s);
		
		return "redirect:/ex22/sub06";
	}	
	
	@RequestMapping("sub06")
	public void method6(HttpSession session) { 
		Student student = (Student) session.getAttribute("student");
		System.out.println(student.getName());
		System.out.println(student.getClassName());
		System.out.println(student.getStudentNumber());
	}
	
	
	//redirectAttribute로 객체 넘기기
	
	@RequestMapping("sub07")
	public String method7(RedirectAttributes r) {
		Student student = new Student();
		student.setClassName("soccer");
		student.setName("park");
		student.setStudentNumber("99");
		
		r.addFlashAttribute("student", student); //session에 넣어놨다가 전달하고 바로 삭제/ r객체에 flashattr메소드로 넘길 수 있다
		return "redirect:/ex22/sub08";
	}
	
	@RequestMapping("sub08")
	public void method8(@ModelAttribute("student") Student student) {
		System.out.println(student);
	}
	
	@RequestMapping("sub09")
	public String method9(RedirectAttributes r) {
		JavaBean03 bean3 = new JavaBean03();
		bean3.setAvg(99.9);
		bean3.setClassName("physics");
		bean3.setLocation("school");
		bean3.setScore(100);
		bean3.setStudentNumber("13");
		
		r.addFlashAttribute("bean3", bean3);
		return "redirect:/ex22/sub10";
	}
	
	@RequestMapping("sub10")
	public void method10(@ModelAttribute("bean3") JavaBean03 bean3) {
		System.out.println(bean3);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
