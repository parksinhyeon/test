package member.model.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static common.JDBCTemplate.*;
public class MemberDao {
	private Properties prop = new Properties();	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int checkEmail(Connection conn,String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result =0;
		String query = prop.getProperty("checkEmail");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
			rset =pstmt.executeQuery();
			if(rset.next()) {
				result=rset.getInt(1);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
}
