<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
</head>
<body>
	<div align="center">
		<h2>Update Profile</h2>
		<form:form action="/updatePatient" method="post"
			modelAttribute="patient">
			<table border="1" cellpadding="5">
				<!-- <tr>
					<td>Id:</td>
					<td> --><form:input type="hidden" path="id"  /><!-- </td>
				</tr> -->
				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<!-- <tr>
					<td>Email:</td>
					<td> --><form:input type="hidden" path="email" /><!-- </td>
				</tr> -->
				<tr>
					<td>Password:</td>
					<td><form:input path="password" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:input path="sex" /></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td>Blood Group:</td>
					<td><form:input path="bloodgrp" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Update"></td>
				</tr>
			</table>
		</form:form>
</body>
</html>