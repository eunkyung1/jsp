package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.filters.SetCharacterEncodingFilter;

@WebServlet("/DoWrite")
public class DoM_Twrite extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DoM_write doAction");
		
		request.setCharacterEncoding("utf-8");
		String msg ="";
		String url ="";
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String[] hobbys = request.getParameterValues("hobby");
		String hobby = "";
		for(int i=0; i<hobbys.length; i++) {
			if(i==0) hobby = hobbys[i];
			else hobby += "," + hobbys[i];
		}
		MemDto mdto = new MemDto(id,pw,name,phone,gender,hobby);
		MemDao mdao = new MemDao();
		int result = mdao.insertMember(mdto);
		if(result!=1) {
			msg = "저장실패";
			url = "m_write.jsp";
		}else {
			msg = "저장성공";
			url = "m_main.jsp";
		}//
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>Sign Up</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('"+msg+"')");
		writer.println("location.href='"+url+"'");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");
		
		
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DoM_write doGet");
		doAction(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DoM_write doPost");
		doAction(request, response);
	}

}
