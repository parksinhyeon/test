package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	
		Member loginUser = new MemberService().loginMember(email,pwd);
		
		if(loginUser!=null) {
			
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(1800);
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("msg","로그인 되었습니다.");
			response.sendRedirect(request.getContextPath());
		}else {
			request.setAttribute("errorMsg","로그인 정보가 틀렸습니다.");
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
