package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
		
		if(loginUser.getEmail().equals(email)) {
			
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(1800);
			session.setAttribute("loginUser", loginUser);
			
			
			String saveId = request.getParameter("saveId");
			//쿠키 객체 생성
			Cookie ck = new Cookie("saveId", email);
			if(saveId != null) {
			
				ck.setMaxAge(60 * 60 * 24 * 7); 
			}else {
				ck.setMaxAge(0);
			}
			
			//쿠키가 사용될 수 있는 유효 디렉토리 설정
			ck.setPath("/"); //root 해당 도메인 전역 사용가능
			
			//response객체에 쿠키에 담아서 브라우저 전송 -> 이후부터 브라우저가 쿠키 관리
			response.addCookie(ck);
					
			response.sendRedirect(request.getContextPath());
		}else {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
