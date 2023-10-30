package com.java.www;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ser05")
public class Ser05 extends HttpServlet {
   // java에서 web접근이 가능한 파일 2가지 형태
	// 1. jsp -> html 안에 java프로그램을 삽입 
	// 2. servlet -> java 프로그램 안에 html을 삽입
	// 3. java - > web접근이 불가능, db접근시 사용
	
	public void init(ServletConfig config) throws ServletException {
		//프로그램이 시작될 때
		System.out.println("init()메소드는 시작할 때 1번 실행이 됨.");
	}

	public void destroy() {
		//프로그램이 종료될 때 1번 실행됨.
		System.out.println("destory()메소드는 종료될 때 1번 실행이 됨.");
	}


	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet는 url접속 시마다 계속 실행");
		doAction(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost는 post방식으로 들어올 때 계속 실행");
		doAction(request, response);
	}

}
