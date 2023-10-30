package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ser06")
public class Ser06 extends HttpServlet {
	
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8"); //post 일때는 꼭 있어야 한글이 보임.
		response.setContentType("text/html; charset=utf-8");
		String a =  request.getParameter("name");
		System.out.println(a);
		PrintWriter writer= response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>서블릿페이지</title>");
		writer.println("<style>");
		writer.println("div{background:yellow; width: 600px; height: 600px;}" );
		writer.println("*{text-align: center; font-size: 70px; margin: auto;}" );
		writer.println("</style>");
		writer.println("<script>alert('당신이 입력한 이름 : ' )</script>");
		writer.println("<script>alert('"+ request.getParameter("name") +"');</script>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<div>보지마보지마!!안보여줄꼰데에에에에ㅔ~~~???</div>");
		writer.println("</body>");
		writer.println("</html>");
		
		
		
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
