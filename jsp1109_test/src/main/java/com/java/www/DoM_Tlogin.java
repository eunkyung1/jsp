package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/doLogin")
public class DoM_Tlogin extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DoM login doAction");
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("id");
		String upw = request.getParameter("pw");
		String msg = "";
		String url = "";
		
		System.out.println("id :"+uid);
		System.out.println("pw :"+upw);
	
		//db연결
		MemDao mdao = new MemDao();
		MemDto mdto = mdao.loginCheck(uid, upw);
		if(mdto==null) {
			msg = "아이디와 비번 틀림";
			url = "m_login.jsp";
		}else {
			msg = "로그인 됨";
			url = "m_main.jsp";
			session.setAttribute("session_id", uid);
			session.setAttribute("session_nicName","말동스");
		}
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>로그인상태</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('"+msg+"')");
		writer.println("location.href='m_main.jsp';");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");
	
	
	
	
	
	
	
	
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DoM login doGet");
		doAction(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DoM login doPost");
		doAction(request, response);
	}

}
