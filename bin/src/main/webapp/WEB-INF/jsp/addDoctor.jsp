<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-add Doctor</title>
</head>
<body>
	
	<div align="center">
	<form:form action="addDoctor" method="post"
		modelAttribute="doctor">
		<h2>Add Doctor</h2>
		<form:input path="docName" type="String" align="center"
			placeholder="Name of The Doctor" /><br>
		<form:input path="docEmail" type="String" align="center"
			placeholder="Doctor Email" /><br>
		<form:input path="docAdd" type="String" align="center"
			placeholder="Address of Doctor" /><br>
		<form:input path="phoneNum" type="String" align="center"
			placeholder="phone of Doctor" /><br>
		<form:input path="docDept" type="String" align="center"
			placeholder="Department of Doctor" /><br>
		<button align="center" type="submit"> Add</button>
	</form:form>
	</div>

</body>
</html>