<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		table,th,td{border: 1px solid black; border-collapse:collapse;
		font-size:20px; text-align:cetner;}
		table{width: 500px; margin:50px auto;}
		th,td{width: 100px; height:40px;}
		</style>
	</head>
	<body>
		<table>
		<tr>
				<th>순서</th>
				<th>SUM</th>
		</tr>	
		<%
		int sum =0;
		for(int i=1;i<=10;i++){
			sum += i;
		%>
			<tr>
			
				<td><%= i %></td>
				<td><%= sum %></td>
			</tr>
		<% 
		}
		%>
		</table>
		
		<table>
		<tr>
				<th>순번</th>
				<th>숫자</th>
				<th>SUM</th>
		</tr>	
		<%
		int sum2 =0;
		int total =0;
		for(int i=0;i<=100;i++){
			
			%>
			<tr>
			
				<td><%= total %></td>
				<td><%= i %></td>			
			
			<%
				sum2 = i+total;
				total = sum2;		
					
		%>

				<td><%= sum2 %></td>
			</tr>
		<% 
		}
		
		%>
		</table>
	</body>
</html>