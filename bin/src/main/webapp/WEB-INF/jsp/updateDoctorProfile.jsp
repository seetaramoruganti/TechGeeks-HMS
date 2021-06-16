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
		<h2>Update Doctor Profile</h2>
		<form:form action="/updateDoctor" method="post"
			modelAttribute="doc">
			<table border="1" cellpadding="5">
				<!-- <tr>
					<td>Id:</td>
					<td> --><form:input type="hidden" path="docId"  /><!-- </td>
				</tr> -->
				<tr>
					<td>Name:</td>
					<td><form:input path="docName" /></td>
				</tr>
				<!-- <tr>
					<td>Email:</td>
					<td> --><form:input type="hidden" path="docEmail" /><!-- </td>
				</tr>
 -->				<tr>
					<td>Password:</td>
					<td><form:input path="docPass" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="docAdd" /></td>
				</tr>
				<tr>
					<td>Mobile:</td>
					<td><form:input path="phoneNum" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Update"></td>
				</tr>
			</table>
		</form:form>
</body>
</html>