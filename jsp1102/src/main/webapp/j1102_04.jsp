<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp-스트립트릿</title>
	</head>
	<body>
	<!-- html 주석 :jsp프로그래밍 입니다. random함수를 사용했습니다. (나타남)--> 
	<%-- jsp주석 : String.format 함수를 사용 (안나타남)--%>
		<% 
		//랜덤으로 숫자 : 0~99999
		//자리수는 5자리가 되어야함. 00001으로 채워야함.
			int num = (int)(Math.random()*100000);
			String str_num = String.format("%05d",num);
			out.println(str_num+"<br>");
		
		//5자리의 개별숫자의 합을 출력하시오.
			int num2 = (int)(Math.random()*100000);
			int sum = 0;
			String Str_num = String.format("%05d",num2);
			out.println(Str_num+"<br>");
			out.println(Str_num.charAt(0)-'0'+"<br>");
			out.println(Str_num.charAt(1)-'0'+"<br>");
			out.println(Str_num.charAt(2)-'0'+"<br>");
			out.println(Str_num.charAt(3)-'0'+"<br>");
			out.println(Str_num.charAt(4)-'0'+"<br>");
			out.println("합계 : "+(
			(Str_num.charAt(0)-'0')+(Str_num.charAt(1)-'0')+(Str_num.charAt(2)-'0')+(Str_num.charAt(3)-'0')+
			(Str_num.charAt(4)-'0'))+"<br>");
			
			for(int i=0;i<5;i++){
				out.println(Str_num.charAt(i)+"<br>");
				sum += (Str_num.charAt(i)-'0');
				out.println(sum);
			}
			
			
		//소문자->대문자  a:97,A:65,0:48
		//대소문자 변경 +- 32
		//숫자 '1'-'0' = 1, 49-48= 1		
		%>
	</body>
</html>