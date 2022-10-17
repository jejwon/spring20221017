package lecture.p01lombok;

import lombok.Getter;
import lombok.Setter;

public class JavaBean3 {
	@Getter
	@Setter
	private String name; //특정 필드에만 붙임
	
	@Getter
	@Setter
	private int age;
}
