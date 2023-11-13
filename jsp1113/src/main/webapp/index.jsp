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
			<li><a href="mlogin.jsp">login</a></li>
			<li><a href="mwrite.jsp">loginSign up</a></li>
		</ul>
		<%}else{ %>
		<h1><%=session.getAttribute("session_name")%>님 Welcome!</h1>
		<ul>
			<li><a href="blist.jsp">Comment</a></li>
			<li><a href="logout.jsp">Logout</a></li>
			<li><a href="mupdate.jsp">Modify Member</a></li>
		</ul>
		<%} %>
	</body>
</html>