<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin Profile</title>
</head>
<body>
	<div align="center">
		<h2>Update Admin Profile</h2>
		<form:form action="/updateAdmin" method="post"
			modelAttribute="user">
			<table border="1" cellpadding="5">
				<!-- <tr>
					<td>Id:</td>
					<td> --><form:input type="hidden" path="id"  /><!-- </td>
				</tr> -->
				<tr>
					<td>Email:</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input path="password" /></td>
				</tr>
				<!-- <tr>
					<td>Role:</td>
					<td> --><form:input type="hidden" path="role" /><!-- </td>
				</tr>
				 -->

				<tr>
					<td colspan="2"><input type="submit" value="Update"></td>
				</tr>
			</table>
		</form:form>
</body>
</html>