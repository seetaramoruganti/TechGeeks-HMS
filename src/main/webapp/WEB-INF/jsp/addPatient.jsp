<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="/resources/editDNPcss/EditDNP.css" />" rel="stylesheet">
<link href="<c:url value="resources/DNPinAdminDash/DNP.css" />" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&family=Zilla+Slab&display=swap" rel="stylesheet">
<title>Admin-add Patient</title>
</head>
<body>
	
	<div align="center">
	<form:form action="addPatient" method="post"
		modelAttribute="patient" class="frm">
		<h2>Add Patient</h2>
		<form:input path="name" type="String" align="center"
			placeholder="Name of The Patient" /><br>
		<form:input path="email" type="String" align="center"
			placeholder="Patient Email" /><br>
		<form:input path="address" type="String" align="center"
			placeholder="Address of Patient" /><br>
		<form:input path="mobile" type="String" align="center"
			placeholder="phone of Patient" /><br>
		<form:input path="sex" type="String" align="center"
			placeholder="Sex of Patient" /><br>
		<form:input path="dob" type="Date" align="center"
			placeholder="D.O.B of Patient" /><br>
		<form:input path="age" type="int" align="center"
			placeholder="Age of Patient" /><br>
		<form:input path="bloodgrp" type="String" align="center"
			placeholder="Blood Group of Patient" /><br>
		<button class="button button3" align="center" type="submit"> Add</button>
	</form:form>
	</div>

</body>
</html>