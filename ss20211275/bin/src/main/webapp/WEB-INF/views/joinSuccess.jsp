<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 등록정보</title>
</head>
<body>
	<div align="center" class="body">
		<h2>사용자 등록정보</h2>
		<table boder='1' width="600" cellpadding="0" cellspacing="0">
			<tr height="40px">
				<td bgcolor="cccccc" width="100" align="center">아이디</td>
				<td>${user.id}</td>
			</tr>
			<tr height="40px">
				<td bgcolor="cccccc" width="100" align="center">패스워드</td>
				<td>****</td>
			</tr>
			<tr height="40px">
				<td boder="cccccc" width="100" align="center">이름</td>
				<td>${user.name}</td>
			</tr>
			<tr height="40px">
				<td boder="cccccc" width="100" align="center">우편번호</td>
				<td>${user.zip}</td>
			</tr>
			<tr height="40px">
				<td boder="cccccc" width="100" align="center">주소</td>
				<td>${user.addr1}</td>
			</tr>
			<tr height="40px">
				<td boder="cccccc" width="100" align="center">상세주소</td>
				<td>${user.addr2}</td>
			</tr>
			<tr height="40px">
				<td boder="cccccc" width="100" align="center">전화번호</td>
				<td>${user.phone}</td>
			</tr>
			<tr height="40px">
				<td boder="cccccc" width="100" align="center">E-MAIL</td>
				<td>${user.email}</td>
			</tr>
		</table>
		<br> <p> <a href="login">로그인</a> </p>
	</div>
</body>
</html>