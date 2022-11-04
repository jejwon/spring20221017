package org.zerock.domainEx.BoardEx;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class BoardDtoEx {
	private int id;
	private String title;
	private String content;
	private String writer;
	private LocalDateTime inserted;
}
