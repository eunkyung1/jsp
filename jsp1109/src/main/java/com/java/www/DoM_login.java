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
public class DoM_login extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doLogin doAction");
		
		//섹션선언
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("id");
		String upw = request.getParameter("pw");
		String msg = "";
		String url = "";
		
		
		System.out.println("id  : " +uid);
		System.out.println("pw  : " +upw);
		
		//db연결
		MemberDao mdao = new MemberDao();
		//MemberDto uid,upw 입력
		MemberDto mdto = mdao.loginCheck(uid,upw);
		if(mdto==null) {
			msg = "Wrong your id and pw. Check again.";
			url = "m_login.jsp";
		}else {
			
			msg = "Complete Login";
			url = "m_main.jsp";
			session.setAttribute("session_id", uid);
			session.setAttribute("session_nicName", "말동스");
		}
		
		
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>Login Check</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('"+msg+"')");
		writer.println("location.href='m_main.jsp';");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");
		
		
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doLogin doGet");
		doAction(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doLogin doPost");
		doAction(request, response);
	}

}
