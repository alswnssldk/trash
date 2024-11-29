<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 로그인 사용자입니다.</h1>
	<table border="1" cellspacing="0">
		<tr>
 			<td bgcolor = "#A6AEBF">유저ID</td>
 			<td style="width:80%">${loginUser.id }</td>
 		</tr>
 		<tr>
 			<td bgcolor = "#A6AEBF">패스워드</td>
 			<td>${loginUser.pass}</td>
 		</tr>
 		<tr>
 			<td bgcolor = "#A6AEBF">이름</td>
 			<td>${loginUser.name}</td>
 		</tr>
 		<tr>
 			<td bgcolor = "#A6AEBF">우편번호</td>
 			<td>${loginUser.zip}</td>
 		</tr>	
 		<tr>
 			<td bgcolor = "#A6AEBF">주소</td>
 			<td>${loginUser.addr1}</td>
 		</tr>	
 		<tr>
 			<td bgcolor = "#A6AEBF">상세주소</td>
 			<td>${loginUser.addr2}</td>
 		</tr>	
 		<tr>
 			<td bgcolor = "#A6AEBF">전화번호</td>
 			<td>${loginUser.phone}</td>
 		</tr>	
 		<tr>
 			<td bgcolor = "#A6AEBF">E-MAIL</td>
 			<td>${loginUser.email}</td>
 		</tr>		
	</table>
</body>
</html>