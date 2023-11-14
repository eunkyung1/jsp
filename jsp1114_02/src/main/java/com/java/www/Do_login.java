package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.Dao.MemberDao;
import com.java.www.Dto.MemberDto;

@WebServlet("/Do_login")
public class Do_login extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction"); 
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDao mdao = new MemberDao();
		MemberDto mdto = mdao.loginCheck(id,pw);
		
		String msg="";
		String url="";
		
		if(mdto!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_nicName", mdto.getName());
			msg="로그인 되었습니다.";
			url="main.jsp";
		}else {
			msg="아이디 또는 패스워드 확인하시기 바랍니다.";
			url="login.jsp";
					
		}
		
		//html페이지 호출하기
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>로그인체크</title></head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('"+msg+"')");
		writer.println("location.href='"+url+"'");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
		
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
