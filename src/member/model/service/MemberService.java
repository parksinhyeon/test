package member.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import member.model.dao.MemberDao;
public class MemberService {

	public MemberService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int checkEmail(String email) {
		Connection conn= getConnection();
		int result = new MemberDao().checkEmail(conn,email);
		return result;
	}

}
