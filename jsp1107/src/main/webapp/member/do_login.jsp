<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 확인</title>
	</head>
	<body>
	
		<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
			
		if(id.equals("admin") && pw.equals("1111")){ //성공할 경우
		
			session.setAttribute("session_id", "admin");
			session.setAttribute("session_nicName", "장난하니");
		
		%>
		<script>
		 alert("로그인 되었습니다.");
		 location.href="../layout/main.jsp";
		</script>
		<%}else{%> //실패할 경우
			<script>
			alert("아이디 또는 패스워드를 확인하시고, 다시 로그인하시기 바랍니다.")
			location.href="login.jsp"; //기존 작성했던 내용이 사라짐.
			//history.back(); 기존의 작성했던 내용 그대로 넘어옴.
			</script>
		
		
		
		<% }%>
		
	</body>
</html>