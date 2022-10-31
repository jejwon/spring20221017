package org.zerock.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.board.BoardDto;
import org.zerock.mapper.board.BoardMapper;

@Service //business logic을 담고 있는 bean
public class BoardService {
	@Autowired
	private BoardMapper mapper; //
	
	public int register(BoardDto board) { //mapper에게 일시킴
		return mapper.insert(board); // 없으니까 의존성 주입
		
	}

	public List<BoardDto> listBoard() {
		return mapper.list();
	}

	public BoardDto get(int id) {
		return mapper.select(id);
	}

	public int update(BoardDto board) {
		return mapper.update(board);
		
	}

	public int remove(int id) {
		return mapper.delete(id);
	}
	
}
