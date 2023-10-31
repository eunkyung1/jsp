package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S02")
public class S1031_02 extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter(); 
		
		String[] subjects = request.getParameterValues("subject");
		String subject = "";
		for(int i=0; i<subjects.length; i++) {
			if(i==0) subject = subjects[i];
			else subject += "," + subjects[i];
		}
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		int total = kor+eng+math; 
		double avg = (total/3.0);
		
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>form 데이터</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("학번 : "	+request.getParameter("no"));
		writer.println("<br>");
		writer.println("이름 : "+ request.getParameter("name"));
		writer.println("<br>");
		writer.println("국어 : "+request.getParameter("kor"));
		writer.println("<br>");
		writer.println("영어 :"+request.getParameter("eng"));
		writer.println("<br>");
		writer.println("수학 :"+request.getParameter("math"));
		writer.println("<br>");
		writer.println("합계 점수 : "+total);		
		writer.println("<br>");
		writer.println("평균 점수 : "+avg);		
		writer.println("<br>");
		writer.println("계열선택 :"+ request.getParameter("major"));
		writer.println("<br>");
		writer.println("좋아하는 과목 : " + Arrays.toString(request.getParameterValues("subject")));
		writer.println("<br>");
		writer.println("주소 :" + request.getParameter("address"));
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}
	
	private String sum(String string) {
		// TODO Auto-generated method stub
		return null;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println();
		doAction(request, response);
	}

}//class
