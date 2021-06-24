<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Registration</title>
<!-- CSS files here-->
<style type="text/css">
.frm {
background: rgb(199, 220, 247);
   
    margin-top: 3%;
    margin-bottom: 5%;
    border-radius: 10px;
    box-shadow: 0 14px 28px rgba(0,0,0,0.25),0 10px
    10px rgba(0,0,0,0.22);
    position: relative;
    overflow: hidden;
    width: 400px;
    max-width: 100%;
    min-height: 440px;
font-family: 'Zilla Slab', serif;
font-size: 26px;    
background: rgb(199, 220, 247);
    display: flex;
    flex-direction: column;
    padding: 0 50px;
    height: 100%;
    justify-content: center;
    align-items: center;
    text-align: center;
}

.frm input{
  
    background: #eee;
    border: none;
    padding: 12px 15px;
    margin: 8px 0;
    width: 100%;
    font-family: 'Zilla Slab', serif;
    font-size: 26px;
}

body {
	background: url("/resources/DocHomeImg/blurhos.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

h2 {
	margin-top:3%;
	font-family: 'Zilla Slab', serif;
	text-align: center;
	font-size: 33px;
}
.frm input[type=submit]{
	border-radius: 20px;
    border: 1px solid #046d4a;
    background: #0b0c58;   
    color: white;
font-family: 'Zilla Slab', serif;  
    padding: 12px 45px;
    letter-spacing: 1px;
    height: 50px;
    text-transform: uppercase;
    transition: transform 80ms ease-in-out;
    width: 250px;
}
</style>


</head>
<body>
<div class="container" align="center">
		<form:form action="register" method="post" modelAttribute="patient" class="frm">
			<table class="table table-sm">
				<h2>Patient Registration</h2>

				<form:label path="name">Name</form:label>
				<form:input class="form-control" path="name" type="text" />
				
				<form:label path="email">Email</form:label>
				<form:input class="form-control" path="email" />
				
				<form:label path="password">password</form:label>
				<form:password class="form-control" path="password" />
				
				<form:label path="address">Address</form:label>
				<form:input class="form-control" path="address" type="text" />
				
				<form:label path="mobile">Mobile</form:label>
				<form:input class="form-control" path="mobile" text="text" />
				
				<form:label path="sex">sex</form:label>
				<form:input class="form-control" path="sex" type="text" />

				<form:label path="dob">Date of Birth</form:label>
				<form:input class="form-control" path="dob" type="date" />

				<form:label path="age">Age</form:label>
				<form:input class="form-control" path="age" type="number" />

				Blood Group
				<form:input class="form-control" path="bloodgrp" type="text" />

				<td align="right"><input class="btn btn-success" type="submit"
					value="Register"></input>
		</form:form>

	</div>

</body>
</html>