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
	<div align="center" class="body">
		<h2>회원가입</h2>
		<form method="post" action="join">
			<table boder="1" width="600" cellpadding="0" cellspacing="0">
				<tr height="40px">
					<td bgcolor="cccccc" width="100" align="center">아이디</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr height="40px">
					<td bgcolor="cccccc" width="100" align="center">패스워드</td>
					<td><input type="text" name="pass"></td>
				</tr>

				<tr height="40px">
					<td bgcolor="cccccc" width="100" align="center">이름</td>
					<td><input type="text" name="name"></td>
				</tr>

				<tr height="40px">
					<td bgcolor="cccccc" width="100" align="center">우편번호</td>
					<td><input type="text" name="zip"></td>
				</tr>

				<tr height="40px">
					<td bgcolor="cccccc" width="100" align="center">주소</td>
					<td><input type="text" name="addr1"></td>
				</tr>

				<tr height="40px">
					<td bgcolor="cccccc" width="100" align="center">상세주소</td>
					<td><input type="text" name="addr2"></td>
				</tr>

				<tr height="40px">
					<td bgcolor="cccccc" width="100" align="center">전화번호</td>
					<td><input type="text" name="phone"></td>
				</tr>

				<tr height="40px">
					<td bgcolor="cccccc" width="100" align="center">E-MAIL</td>
					<td><input type="text" name="email"></td>
				</tr>
			</table>
			<br>
			<p>
				<input type="submit" value="회원가입">
			</p>
		</form>
	</div>
	<a href="list"> 회원목록 </a>
</body>
</html>