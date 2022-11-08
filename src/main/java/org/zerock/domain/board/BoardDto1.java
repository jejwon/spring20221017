package org.zerock.domain.board;

import java.time.LocalDate;

import lombok.Data;
@Data
public class BoardDto1 {
	private int id;
	private String title;
	private String writer;
	private String content;
	private LocalDate inserted;
	
}
