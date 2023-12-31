<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.java.www.Dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.www.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		 <%
		     BoardDao bdao = new BoardDao();
		     //게시글 전체를 가져오기
		     ArrayList<BoardDto> list = bdao.selectAll();
		 %>
		<meta charset="UTF-8">
		<title>Commnets</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
		   *{margin:0; padding:0;}
		   div{width:1000px; margin:30px auto; text-align: center;}
		   h1{margin-bottom:30px; }
		   table,th,td{border:1px solid black; border-collapse: collapse;
		   font-size: 16px; }
		   th,td{width:200px; height:40px; }
		   button{width:200px; height:60px; margin-top:30px; }
		</style>
	</head>
	<body>
		<div>
		   <h1>게시판</h1>
		   <table>
		   	<colgroup>
		   		<col width="10%">
		   		<col width="40%">
		   		<col width="18%">
		   		<col width="18%">
		   		<col width="12%">
		   	</colgroup>
		   	
		     <tr>
		       <th>Number</th>
		       <th>Title</th>
		       <th>Writer</th>
		       <th>Date</th>
		       <th>Hit</th>
		     </tr>
	
		   	<%
		   	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		   	for(int i=0;i<list.size();i++){
		   		BoardDto bdto = list.get(i);
		   		
		   	%>
		     <tr>
		   		
		       <td><%= bdto.getBno() %></td>
		       <td><a href="bview.jsp?bno=<%=bdto.getBno() %>"> <%= bdto.getBtitle() %></a></td>
		       <td><%= bdto.getId() %></td>
		       <td><%= sdf.format(bdto.getBdate()) %></td>
		       <td><%= bdto.getBhit() %></td>
		       
		     </tr>
		  <% }%> 	
		   </table>
		   <a href="bwrite.jsp"><button type="button">Write</button></a>
		   <a href="index.jsp"><button type="button">Home</button></a>
		</div>
	
	</body>
</html>