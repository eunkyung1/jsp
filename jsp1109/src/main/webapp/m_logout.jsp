<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			session.invalidate(); // session 모두 삭제
			//session.removeAttribute("session_id"); //session 1개 삭제
			
		%>
		<script>
			alert("로그아웃합니다.");
			location.href="m_main.jsp";
		</script>
		
			
	</body>
</html>