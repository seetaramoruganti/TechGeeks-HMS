<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-add Nurse</title>
</head>
<body>
	
	<div align="center">
	<form:form action="addNurse" method="post"
		modelAttribute="nurse">
		<h2>Add Nurse</h2>
		<form:input path="nurseName" type="String" align="center"
			placeholder="Name of The Nurse" /><br>
		<form:input path="nurseEmail" type="String" align="center"
			placeholder="Nurse Email" /><br>
		<form:input path="nurseAdd" type="String" align="center"
			placeholder="Address of Nurse" /><br>
		<form:input path="nurseNum" type="String" align="center"
			placeholder="phone of Nurse" /><br>
		<button align="center" type="submit"> Add</button>
	</form:form>
	</div>

</body>
</html>