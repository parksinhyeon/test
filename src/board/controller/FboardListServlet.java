package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;


@WebServlet("/list.Fbo")
public class FboardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FboardListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService bService = new BoardService();
		// -----------------페이징 처리---------------------------------//
		// 전체 게시글 수 구하기 
		int boardCount = bService.getBoardCount();
		/*
		 * ArrayList<Board>list = bService.selectList(currentPage,limit);
		 */		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
