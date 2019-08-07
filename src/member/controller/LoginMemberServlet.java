package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

@WebServlet("/login.me")
public class LoginMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginMemberServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("loginEmail");
		String pwd = request.getParameter("loginPwd");
		
		System.out.println(email);
		System.out.println(pwd);
		Member member = new MemberService().loginMember(email,pwd);
		System.out.println(member);
		if(member!=null) {
	

		}else {
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
