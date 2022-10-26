package org.zerock.domain.lecture;

import java.time.LocalDate;

import lombok.Data;

@Data
public class JavaBean08 {
	private int id;
	private LocalDate date;
	private JavaBean05 employee; //자바빈을 프로퍼티로 가지기
}
