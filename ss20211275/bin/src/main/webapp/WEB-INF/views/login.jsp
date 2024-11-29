<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원인증</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>


<div class="login-page">
	<div class="form">
		<form:form class="login-form" modelAttribute="user" method="post"
			action="login">

			<p align="left">
				<span class="fieldError"><form:errors path="id" /></span>
			</p>
			<form:input path="id" type="text" placeholder="username" />

			<p align="left">
				<span class="fieldError"><form:errors path="pass" /></span>
			</p>
			<form:input path="pass" type="password" placeholder="password" />


			<button type="submit">login</button>

			<p class="message">
			<ul id="ullog">
				<li id="lilogb"><a href="join"> 회원가입 </a></li>
				<li id="lilog"><a href="findId_form"> 아이디/ </a> <a
					href="findpass_form" class="pwd"></a></li>
			</ul>
			</p>
		</form:form>
	</div>
</div>

</body>
</html>