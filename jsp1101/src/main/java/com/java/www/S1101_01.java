package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S01")
public class S1101_01 extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");//첫번째 구현을 해야함.
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String[] hobbys = request.getParameterValues("hobby");
		String hobby="";
		for(int i=0; i<hobbys.length;i++) {
			if(i==0) hobby = hobbys[i]; 
			else hobby += "," + hobbys[i];
		}
				
	
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title> form 형식</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h3> id : "+ id + "</h3>" );
		writer.println("<h3> pw : "+ pw + "</h3>" );
		writer.println("<h3>이름 : "+request.getParameter("name")+ "</h3>");
		writer.println("<h3> gender : "+ gender + "</h3>" );
		writer.println("<h3> hobby : "+ hobby + "</h3>" );
		writer.println("<h3> hobbys : "+ Arrays.toString(hobbys) + "</h3>" );
		writer.println("<h3> address : "+ address + "</h3>" );
		writer.println("</body>");
		writer.println("</html>");
		
		
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doget");
		doAction(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}

}
