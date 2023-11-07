<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>db연결</title>
	</head>
	<body>
		<%
		Connection conn=null;
		Statement stmt = null;
		ResultSet rs = null;
		int bno = 0;
		String btitle = "";
		String bcontent = "";
		String bdate="";
		String id = "";
		int bgroup=0;
		int bstep=0;
		int bindent=0;
		int bhit=0;
		String bfile="";
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
		stmt = conn.createStatement();
		String query = "select*from board";
		rs = stmt.executeQuery(query);
		
		while (rs.next()){
			bno = rs.getInt("bno");
			btitle = rs.getString("btitle");
			bcontent = rs.getString("bcontent");
			bdate = rs.getString("bdate")+"";//날짜
			//Timestamp e = rs.getTimestamp("bdate");
			id = rs.getString("id");
			bgroup = rs.getInt("bgroup");
			bstep = rs.getInt("bstep");
			bindent = rs.getInt("bindent");
			bhit = rs.getInt("bhit");
			bfile = rs.getString("bfile");
			out.println("번호 : "+bno+" , "+"<br>"+"제목 : "+btitle+" , "+"내용 : "+bcontent+" , "+"<br>"+"날짜 : "+bdate+" , "+"아이디 : "+id+" , "+"그룹 : "+bgroup+" , "+
						"단계 : "+bstep+" , "+"번호 : "+bindent+" , "+"방문수 : "+bhit+" , "+"파일명 : "+bfile+"<br>");
			
			
		}
		
			
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		};
		
		%>
	</body>
</html>