<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Result</title>
	</head>
	<body>
		<h2>아이디 : ${param.id}</h2>
		<h2>이름 : ${param.name}</h2>
		
		<%-- <% response.sendRedirect("jsp_result4.jsp?result=1"); %> --%>
		<!-- sendRedirect는 값을 태워서 보내지 못함. -->
		
		<%
			RequestDispatcher dispatcher = request.getRequestDispatcher("jsp_result4.jsp?result=1");	
			dispatcher.forward(request, response);
		%>
		<!-- RequestDispatcher 데이터를 보내긴 하지만 이전 분기점으로 주소값 표기됨.  -->
		
		
		
		
		
	</body>
</html>