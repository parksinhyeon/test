package board.model.service;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import board.model.dao.BoardDao; 

public class BoardService {

	public int getBoardCount() {
		Connection conn = getConnection();
		int boardCount = new BoardDao().getBoardCount(conn);
		
		return boardCount;
	}
	

}
