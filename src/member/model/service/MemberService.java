package member.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;
public class MemberService {

	public MemberService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int checkInfo(String info) {
		Connection conn= getConnection();
		int result = new MemberDao().checkInfo(conn,info);
		return result;
	}

	public int joinMember(Member member) {
		Connection conn= getConnection();
		int result = new MemberDao().joinMember(conn,member);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}

}
