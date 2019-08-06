package member.model.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;

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

	public int checkInfo(Connection conn,String info) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result =0;
		String query = prop.getProperty("checkInfo");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, info);
			pstmt.setString(2, info);
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

	public int joinMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		int result =0;
		String query  =prop.getProperty("joinMember");
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getNickName());
			result=pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
}
