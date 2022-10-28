package org.zerock.controller.lecture.p07mybatis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.lecture.JavaBean18;
import org.zerock.domain.lecture.JavaBean19;
import org.zerock.mapper.lecture.Mapper10;

@Controller
@RequestMapping("ex36")
public class Controller36 {
	@Autowired 
	private Mapper10 mapper;
	
	@RequestMapping("sub01")
	public void method1() {
		int cnt = mapper.removeCustomer();
		System.out.println(cnt + "개 레코드 삭제됨");
	}
	@RequestMapping("sub02")
	public void method2() {
		int cnt = mapper.removeEmployee();
		System.out.println(cnt + "개 레코드 삭제됨");
	}
	
	@RequestMapping("sub03")
	public void method3(@RequestParam(name="id", defaultValue="0") int id) { //int: null값으로 오류 -> Integer / 기본값 설정
		int cnt = mapper.removeCustomerById(id);
		System.out.println(cnt + "개 고객 레코드 삭제됨");
	}
	
	@RequestMapping("sub04")
	public void method4(@RequestParam(name="id", defaultValue="0") int id) {
		int cnt = mapper.removeEmployeeById(id);
		System.out.println(cnt + "개 직원 레코드 삭제됨");
	}
	
	@RequestMapping("sub05")
	public void method5() { //int: null값으로 오류 -> Integer / 기본값 설정
		int cnt = mapper.addCustomer();
		System.out.println(cnt + "개 고객 레코드 업데이트됨");
	}
	
	@RequestMapping("sub06")
	public void method6() {
		int cnt = mapper.addSupplier();
		System.out.println(cnt + "개 공급자 정보 입력됨");
	}
	
	@GetMapping("sub07") //view로 포워드
	public void customerForm() {
		
	}
	
	@PostMapping("sub07")
	public void method7(JavaBean18 customer) {
		int cnt = mapper.insertCustomer(customer); 
		System.out.println(cnt + "개 고객 정보 입력됨");
	}
	
	@GetMapping("sub08")
	public void supplierForm() {
		//포워드: 요청 경로 입력->자동 포워드 코드 생성
	}
	
	@PostMapping("sub08")
	public void method8(JavaBean19 supplier) {
		int cnt = mapper.insertSupplier(supplier);
		System.out.println(cnt + "개 공급자 정보 입력됨");
	}
	
	
	// 10-28 ) insert로 key 얻기
	@GetMapping("sub09") //view로 포워드
	public String getMethod9() {
		return "/ex36/sub07";
	}
	
	@PostMapping("sub09")
	public String postMethod9(JavaBean18 customer, RedirectAttributes rttr) { //redirect 될 때 나타나는 attribute: 새로고침 하면 사라짐 
		System.out.println("key:" + customer.getId()); //0
		
		int cnt = mapper.insertCustomerAndGetKey(customer); 
		System.out.println(cnt + "개 고객 정보 입력됨");
		System.out.println("key:" + customer.getId());
		
		rttr.addFlashAttribute("message", customer.getId() + "번 고객 등록 완료"); // session에 넣었다 꺼내서 query string에 노출되지 않음
		return "redirect:/ex36/sub09";
	}
	
	@GetMapping("sub10") //view로 포워드
	public String getMethod10() {
		return "/ex36/sub08"; // 직접 forward는 string으로
	}
	
	@PostMapping("sub10")
	public String postMethod10(JavaBean19 supplier, RedirectAttributes rttr) { //redirect 될 때 나타나는 attribute: 새로고침 하면 사라짐 
		System.out.println("key:" + supplier.getId()); //0
		
		int cnt = mapper.insertSupplierAndGetKey(supplier); 
		System.out.println(cnt + "개 공급자 입력됨");
		System.out.println("key:" + supplier.getId());
		
		rttr.addFlashAttribute("message", supplier.getId() + "번 공급자 등록 완료");
		return "redirect:/ex36/sub10";
	}
	
}
