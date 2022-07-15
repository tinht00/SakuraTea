

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Creative Colorlib SignUp Form</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {
	background: #C5E1A5;
}

form {
	width: 60%;
	margin: 60px auto;
	background: #efefef;
	padding: 60px 120px 80px 120px;
	text-align: center;
	-webkit-box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
	box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	position: relative;
	margin: 40px 0px;
}

.label-txt {
	position: absolute;
	top: -1.6em;
	padding: 10px;
	font-family: sans-serif;
	font-size: .8em;
	letter-spacing: 1px;
	color: rgb(120, 120, 120);
	transition: ease .3s;
}

.input {
	width: 100%;
	padding: 10px;
	background: transparent;
	border: none;
	outline: none;
}

.line-box {
	position: relative;
	width: 100%;
	height: 2px;
	background: #BCBCBC;
}

.line {
	position: absolute;
	width: 0%;
	height: 2px;
	top: 0px;
	left: 50%;
	transform: translateX(-50%);
	background: #8BC34A;
	transition: ease .6s;
}

.input:focus+.line-box .line {
	width: 100%;
}

.label-active {
	top: -3em;
}

button {
	display: inline-block;
	padding: 12px 24px;
	background: rgb(220, 220, 220);
	font-weight: bold;
	color: rgb(120, 120, 120);
	border: none;
	outline: none;
	border-radius: 3px;
	cursor: pointer;
	transition: ease .3s;
}

button:hover {
	background: #8BC34A;
	color: #ffffff;
}
</style>
</head>
<body>
	<form:form action="dangki/insert.htm" modelAttribute="nguoidung">
		<div>Đăng kí tài khoản</div>
		<label>
			<p class="label-txt">Nhập họ và tên</p> <form:input class="input"
				required="required" path="hoten" />
			<div class="line-box">
				<div class="line"></div>
			</div>
		</label>
		<label>
			<p class="label-txt">Nhập số điện thoại</p> <form:input class="input"
				required="required" type="tel" pattern="(?=.*[0-9]).{10,10}"
				path="sodt" />
			<div class="line-box">
				<div class="line"></div>
			</div>
		</label>
		<label>
			<p class="label-txt">Mật khẩu</p> <input type="password"
			class="input" required="required" id="password" />
			<div class="line-box">
				<div class="line"></div>
			</div>
		</label>
		<label>
			<p class="label-txt">Nhập lại mật khẩu</p> <form:password
				class="input" id="confirm_password" required="required"
				path="matkhau" />
			<div class="line-box">
				<div class="line"></div>
			</div>
		</label>
		<label>
			<p class="label-txt">Nhập email</p> <form:input class="input"
				required="required" type="email" path="email" />
			<div class="line-box">
				<div class="line"></div>
			</div>
		</label>
		<label>
			<p class="label-txt">Nhập địa chỉ</p> <form:input class="input"
				required="required" path="diachi" />
			<div class="line-box">
				<div class="line"></div>
			</div>
		</label>
		<button type="submit">Đăng kí</button>
	</form:form>


	<script type="text/javascript">
		var password = document.getElementById("password"), confirm_password = document
				.getElementById("confirm_password");

		function validatePassword() {
			if (password.value != confirm_password.value) {
				confirm_password.setCustomValidity("Mật khẩu không khớp.");
			} else {
				confirm_password.setCustomValidity('');
			}
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	</script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<link href="https://yui.yahooapis.com/pure/0.5.0/pure-min.css"
		rel="stylesheet" />
</body>
</html>