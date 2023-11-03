<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>확인</title>
	</head>
	<body>
	<% 
	
		String jumin = request.getParameter("jumin");
		String name = URLEncoder.encode( request.getParameter("name"));
		//주민번호를 입력해서 나이를 가져오시오.
	
		//주민번호 7번째 자리 가져옴.
		int ju1 = Integer.parseInt(jumin.substring(7,8));
		//주민번호 첫번째 2자리 가져옴.
		String ju2 = jumin.substring(0,2);
		int age=0, ju_num=0;
		if(ju1==1 || ju1==2){
			ju_num = Integer.parseInt("19"+ju2);
			age = 2023 - ju_num;
		}else{ 
			ju_num = Integer.parseInt("20"+ju2);
			age = 2023- ju_num;
		}
		
		//if(age>=19) response.sendRedirect("success.jsp?age="+age+"&name="+name);
		//else response.sendRedirect("reject.jsp?age="+age+"&name="+name);
		
		//out.println("당신의 나이 :" +age+"<br>");
		
		
		
		%>
		<%
		String min1 = jumin.substring(7,8);
		String min2 = jumin.substring(0,2);
		if(min1.equals(1) || min1.equals(2)){
			ju_num = Integer.parseInt("19"+min2);
			age = 2023 - ju_num;
		}else{
			ju_num = Integer.parseInt("20"+min2);
			age = 2023 - ju_num;
		}
			
		
		
		%>
		
		
		
		
	
	
	</body>
</html>