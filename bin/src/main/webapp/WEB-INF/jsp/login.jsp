<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="resources/test/test.css" />" rel="stylesheet">
<script src="<c:url value="resources/test/test.js" />"></script>
<title>HMS Login</title>
</head>
<body>
	<div class="form-container sign-in-container">
		<form:form action="/login" method="post" modelAttribute="user">
			<h1>Sign in</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-ff"></i></a> <a
					href="#" class="social"><i class="fab fa-google-plus-g"></i></a> <a
					href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>or use your account</span>
			<form:input path="email" placeholder="Email" />
			<form:input path="password" type="password" placeholder="Password" />
			<p align="center"><font color="red">${msg}</font></p>
			<a href="#">Forgot your password?</a>
			<button id="patReg">Sign In</button>
		</form:form>
		
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="patReg">
					<a href="register"> Patient Registration</a>
				</button>
			</div>
		</div>
	</div>


</body>
</html>