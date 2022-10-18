package lecture.p06core;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor //필드로 생성자 생성
@NoArgsConstructor //기본 생성자
public class Service {
	@Getter
	private Dao dao;
	
	
}
