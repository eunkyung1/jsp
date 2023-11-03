package com.java.www;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S03")
public class S1103_03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		int page = Integer.parseInt(request.getParameter("page"));
		String searchword = request.getParameter("searchword");
		int startrow = (10*(page-1))+1;
		int endrow = (10*page);
		System.out.println("페이지 번호 :"+page );
		System.out.println("가져올  시작페이지 :"+startrow );
		System.out.println("가져올 마지막페이지 :"+endrow );
		System.out.println("넘어올 검색어 :"+searchword );
		
		String query = "select * from "
				+"(select ROW_NUMBER() OVER (ORDER BY bno desc) as rnum,bno,btitle,bcontent,bdate"
				+" from board"
				+" where bcontent like '%love%') a"
				+" where a.rnum>="+startrow+" and a.rnum<="+endrow+";";
		System.out.println("오라클 query 구문 : "+query);		
				
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	
	}

}
