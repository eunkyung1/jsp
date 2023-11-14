<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Result</title>
		<style>
		span{font-size:50px; font-weight:700; color:red; }
		span:after{color:yellow; content:","}
		</style>
	</head>
	<body>
		<h2>Session : <%=session.getAttribute("session_nicName") %> </h2>
		<h2>Array Hobby : <%=Arrays.toString(request.getParameterValues("hobby")) %> </h2>
		<h2>ID : <%=request.getParameter("id") %> </h2>
		<h2>Name : <%= request.getParameter("name") %> </h2>
		<h2>Number 1 : <%= request.getParameter("num1") %> </h2>
		<h2>Number 2 : <%= request.getParameter("num2") %> </h2>
		<h2>Total1 : <%= request.getParameter("num1")+request.getParameter("num2") %> </h2>
		<h2>Total2 : <%= Integer.parseInt(request.getParameter("num2"))+Integer.parseInt(request.getParameter("num1")) %> </h2>
		<hr>
		<h2>Session1 : ${sessionScope.session_nicName }</h2>
		<h2>Session2 : ${session_nicName }</h2>
		<h2>Array Hobby : ${paramValues.hobby}</h2>
		<c:forEach var="hobby" items="${paramValues.hobby}">
			<span>${hobby}</span>
		</c:forEach>	
		<h2>ID : ${param.id }</h2>
		<h2>Name : ${param.name }</h2>
		<h2>Total : ${param.num1 + param.num2 }</h2>
	</body>
</html>