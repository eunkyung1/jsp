package com.java.www;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JJJ")
public class JavaAction extends HttpServlet {

       
    public JavaAction() { //생성자 - 기본
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//웹브라우저에서 url입력 시 모두 doGet으로 들어옴.
		//form 태그에서 method = "get" 
		System.out.println("서블릿 doGet메소드가 호출되었습니다.");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//form 태그에서  method = "post" 전송할 때 
		doGet(request, response);
	
	}

}
