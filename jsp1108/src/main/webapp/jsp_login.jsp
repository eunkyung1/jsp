<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
		$(function(){
			$("#fbtn").click(function(){
				//alert($("#id").val());
				//alert($("#pw").val());
				frm.submit();
			})
			
			
		});
		
		</script>
	</head>
	
	<body>
	
	<h1>로그인</h1>
	<form name="frm" method="post" action="doJsp_login.jsp">
	<lable>아이디</lable>
	<input type="text" id="id" name="id"><br>
	<lable>패스워드</lable>
	<input type="password" id="pw" name="pw"><br>
	<input type="button" id="fbtn" value="로그인">	
	<input type="button" onclick="javascript:history.back()" value="취소">	
	<br>
	</form>
	
	
	</body>
</html>