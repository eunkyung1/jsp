<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		 
		<meta charset="UTF-8">
		<title>Notice</title>
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
		     <tr>
		     	<td></td>
		     	<td></td>
		     	<td></td>
		     	<td></td>
		     	<td></td>
		     </tr>
		  
		
		   </table>
		   <a href="bwrite.jsp"><button type="button">Write</button></a>
		   <a href="index.jsp"><button type="button">Home</button></a>
		</div>
	
	</body>
</html>