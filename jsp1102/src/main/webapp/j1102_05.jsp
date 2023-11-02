<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	<%--while문으로 돌리기 --%>>
	<%
		int i=0;
		while(true){
			i++;
			out.println("2 *" +i+"="+(2*i)+"<br>");
		
	%>
	<p>-----------------------------------<p>		
	<% if(i>=9) break;
	
		
		}%>
		
	
	
	<%--for문으로 돌리기 --%>>
	<%
		int j=0;
		for(j=1;j<=9;j++){
			out.println("2 *" +j+"="+(2*j)+"<br>");
	%>
	------------------<br>	
	<% 
	
		
		}%>
		
		<%
			int a=2;
			if(a%2!=0){ //로그인버튼을 클릭했을 때 아이디, 패스워드가 일치하면 1, 일치하지 않으면 0
		%>
		<h2>홍길동님 환영합니다.</h2>
		<%
		}else{
		%>
		<h2>아이디 또는 패스워드가 일치 하지 않습니다. 다시 확인하세요.</h2>
		<%
		}%>	
	</body>
</html>