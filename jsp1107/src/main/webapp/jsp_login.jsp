<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 페이지</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
			$(function(){
				$("#fbtn").click(function(){
					//alert("id : "+$("#id").val());
					//alert("pw : "+$("#pw").val());
					l_frm.submit();
					
					
				});//click
			});
		</script>
	</head>
	<body>
		<h1>로그인</h1>
			<form name="l_frm" method="post" action="S01">
			<label>아이디</label><br>
			<input type="text" name="id" id="id"><br>
			<label>비밀번호</label><br>
			<input type="password" name="pw" id="pw"><br>
			<input type="button" id="fbtn" value="로그인">
			<input type="button" onclick="javascript:history.back();" value="취소">
		</form>
	</body>
</html>