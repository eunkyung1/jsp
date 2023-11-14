<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Main page</title>
	</head>
	<body>
	<% if (session.getAttribute("session_id")==null) {%>
		<h1>Do login</h1>
		<ul>
			<li><a href="login.jsp">login</a></li>
			<li><a href="write.jsp">login Signup</a></li>
		</ul>
		<%}else{ %>
		<h1><%=session.getAttribute("session_name")%>님 Welcome!</h1>
		<ul>
			<li><a href="list.jsp">Comment</a></li>
			<li><a href="logout.jsp">Logout</a></li>
			<li><a href="update.jsp">Modify Member</a></li>
		</ul>
		<%} %>
	</body>
</html>