package org.zerock.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.board.BoardDto1;
import org.zerock.mapper.board.BoardMapper1;

@Service
public class BoardService1 { //mapper에 넘기기
	@Autowired
	private BoardMapper1 mapper;
	
	public void register(BoardDto1 board) {

		 mapper.insert(board);
	}

	public List<BoardDto1> listBoard() {
		return mapper.list();
	}
}
