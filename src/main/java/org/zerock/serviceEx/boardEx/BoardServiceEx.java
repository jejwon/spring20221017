package org.zerock.serviceEx.boardEx;

import org.springframework.beans.factory.annotation.Autowired;
import org.zerock.domainEx.BoardEx.BoardDtoEx;
import org.zerock.mapper.boardEx.BoardExMapper;

public class BoardServiceEx {
	@Autowired
	private BoardExMapper mapper;
	
	public int register(BoardDtoEx board) {
		return mapper.insert(board);
	}

}
