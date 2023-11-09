<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Sign Up</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			*{margin:0; padding:0;}
			div{width:600px; margin:30px auto; text-align: center;}
			h1{margin-bottom:30px;}
			table,th,td{border:1px solid darkgreen; border-collapse:collapse;
			font-size: 16px; }
			th{width:200px; height:40px;}
			td{width:400px;}
			button{width:200px; height:60px; margin-top:30px;}
		</style>
		<script>
		$(function(){
			$("#fbtn").click(function(){
				//alert("Complete save member");
				m_frm.submit();
			})
		})
		
		</script>
	</head>
	<body>
		<div>
		<h1>Sign up</h1>
		<form name="m_frm" method="post" action="DoWrite">
			<table>
				<tr>
					<th>ID</th>
					<td><input type="text" name="id" id="id"></td>		
				</tr>
				<tr>
					<th>PASSWORD</th>
					<td><input type="password" name="pw" id="pw"></td>		
				</tr>
				<tr>
					<th>NAME</th>
					<td><input type="text" name="name" id="name"></td>		
				</tr>
				<tr>
					<th>PHONE NUMBER</th>
					<td><input type="text" name="phone" id="phone"></td>		
				</tr>
				<tr>
					<th>GENDER</th>
					<td>
					<input type="radio" name="gender" id="Female" value="Female" >
					<label for="Female">Female</label>		
					<input type="radio" name="gender" id="Male" value="Male" >
					<label for="Mmale">Male</label>		
					</td>
				</tr>
				<tr>
					<th>HOBBY</th>
					<td>
					<input type="checkbox" name="hobby" id="game" value="game">
					<label for="game">game</label>
					<input type="checkbox" name="hobby" id="golf" value="golf">
					<label for="golf">golf</label>
					<input type="checkbox" name="hobby" id="cook" value="cook">
					<label for="cook">cook</label>
					<input type="checkbox" name="hobby" id="run" value="run">
					<label for="run">run</label>
					<input type="checkbox" name="hobby" id="book" value="book">
					<label for="book">book</label>
					</td>		
				</tr>
			</table>
				<button type="button" id="fbtn">SAVE</button>
				<button type="button" onclick="javascript:history.back()">CANCEL</button>
		</form>
		</div>
	</body>
</html>