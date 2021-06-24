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
<title>Update Admin Profile</title>
</head>
<body>
	<div align="center">
		<h2>Update Admin Profile</h2>
		<form:form action="/updateAdmin" method="post"
			modelAttribute="user">
			<table cellpadding="5" class="frm">
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