<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center" class="from">
		<p>회원 목록</p>
		<hr size="1">
		<from:from modelAttribure="user" name="userList" method="post">
			<TABLE border='2' width='800' cellSpacing=0 cellPadding=5>
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>전화번호</th>
						<th>주소</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="result" items="${userList}" varStatus="status">
						<tr>
							<td>${result.no}</td>
							<td>${result.name}</td>
							<td>${result.phone}</td>
							<td>${result.addr1}${result.addr2}</td>
						</tr>
					</c:forEach>
				</tbody>
			</TABLE>
		</from:from>
	</div>
</body>
</html>