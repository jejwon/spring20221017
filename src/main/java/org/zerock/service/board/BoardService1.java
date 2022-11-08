package org.zerock.service.board;

import org.springframework.stereotype.Service;
import org.zerock.mapper.board.BoardMapper1;

@Service
public class BoardService1 { //mapper에 넘기기
	
	private BoardMapper1 mapper;
	
	public int register() {
		return mapper.insert();
	}
}
