package board.model.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

public class BoardDao {
		private Properties prop = new Properties();
		
	public BoardDao() {
		
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		
		try {
			prop.load(new FileReader(fileName));
		}catch(Exception e) {
		 	e.printStackTrace();
		}
	}
	

	/**
	 * 게시글 전체 개수 조회용 DAO
	 * @param conn
	 * @return
	 */
	public int getBoardCount(Connection conn) {
		Statement stmt = null; 
		ResultSet rset = null;
		int boardCount = 0;
		String query = prop.getProperty("getFboardCount");
		
		
		return boardCount;
	}
	

}
