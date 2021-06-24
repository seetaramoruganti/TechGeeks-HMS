<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="/resources/editDNPcss/EditDNP.css" />" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&family=Zilla+Slab&display=swap" rel="stylesheet">
<title>Update Profile</title>
</head>
<body>
	<div align="center">
		<h2>Update Doctor Profile</h2>
		<form:form action="/updateDoctor" method="post"
			modelAttribute="doc" class="frm">
			<table border="0" cellpadding="5">
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
					<td>Department:</td>
					<td><form:input path="docDept" /></td>
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