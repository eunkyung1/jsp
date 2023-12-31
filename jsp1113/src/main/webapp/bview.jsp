<%@page import="com.java.www.Dto.BoardDto"%>
<%@page import="com.java.www.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글보기</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			*{margin:0; padding:0;}
			div{width:600px; margin:30px auto; text-align:center;}
			h1{margin-bottom:30px;}
			table,th,td{border:1px solid black; border-collapse:collapse; font-size:16px;}
			th{width:200px; height:40px;}
			td{width:400px;}
			button{width:150px; height:40px; margin-top:30px;}
		</style>
		<script>

		</script>
		
	</head>
	<body>
		<%
			int bno = Integer.parseInt(request.getParameter("bno"));
			BoardDao bdao = new BoardDao();
			BoardDto bdto = bdao.selectOne(bno);
		
		%>
		<div>
			<h1>회원정보보기</h1>
				<table>
					<tr>
						<th>번호</th>
						<td><%=bdto.getBno() %></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><%=bdto.getBtitle() %></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><%=bdto.getBcontent() %></td>
					</tr>
					<tr>
						<th>날짜</th>
						<td><%=bdto.getBdate() %></td>
					</tr>
					<tr>
						<th>성별</th>
						<td></td>
					</tr>
					<tr>
						<th>이미지</th>
						<td><img src="upload/<%=bdto.getBfile()%>"></td>
					</tr>
				</table>
					<a href="bupdate.jsp?id="><button type="button" id="fbtn">게시글수정</button></a>
					<a href="bdelete.jsp"><button type="button" id="fbtn">게시글 삭제</button></a>
					<a href="blist.jsp"><button type="button">게시글리스트</button></a>
		</div>
	</body>
</html>