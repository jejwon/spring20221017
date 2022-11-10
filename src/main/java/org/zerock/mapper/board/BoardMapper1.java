package org.zerock.mapper.board;

import java.util.List;

import org.zerock.domain.board.BoardDto1;

public interface BoardMapper1 {

	int insert(BoardDto1 board);

	List<BoardDto1> list();
	
}
