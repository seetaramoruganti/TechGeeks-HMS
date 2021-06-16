<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-add Patient</title>
</head>
<body>

	<div align="center">
        <h2>Edit</h2>
        <form:form action="/addPatient" method="post" modelAttribute="editedPatient">
            <table border="0" cellpadding="5">
                <!-- <tr>
                    <td>ID: </td>
                    <td> --><form:input type="hidden" path="id" /><!-- </td>
                </tr> -->
                <tr>
                    <td>Name: </td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><form:input path="email" /></td>
                </tr>
                <tr>
                    <td>Adress: </td>
                    <td><form:input path="address" /></td>
                </tr> 
                <tr>
                    <td>Phone: </td>
                    <td><form:input path="mobile" /></td>
                </tr>
                <tr>
                    <td>Sex: </td>
                    <td><form:input path="sex" /></td>
                </tr>
                <tr>
                    <td>D.O.B: </td>
                    <td><form:input path="dob" /></td>
                </tr>
                <tr>
                    <td>Age: </td>
                    <td><form:input path="age" /></td>
                </tr>
                <tr>
                    <td>Blood Group: </td>
                    <td><form:input path="bloodgrp" /></td>
                </tr>     
                <tr>
                    <td colspan="2"><input type="submit" value="Update"></td>
                </tr>                    
            </table>
        </form:form>
        <p>${addMsg}</p>
    </div>

</body>
</html>