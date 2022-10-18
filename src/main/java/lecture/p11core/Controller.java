package lecture.p11core;

import org.springframework.stereotype.Component;

@Component
public class Controller {
	private Service service;
	
//	@Autowired	생성자가 하나일 때 자동 주입
	public Controller(Service service) {
		this.service = this.service;
	}
	
	public Service getService() {
		return service;
	}
}
