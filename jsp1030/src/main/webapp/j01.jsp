<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP-HTML 태그</title>
	</head>
	<body>
		<h1>jps페이지 입니다.</h1>
		<!-- JSP : html 파일인데 java프로그램을 넣을 수 있는 것. -->
		<%
			int a = 1;
		 	int b = 100;
		 	int sum = 0;
		 	for(a=1;a<=b;a++){
		 		sum += a;
		 	}
			out.println(sum);
		%>
	
	</body>
</html>