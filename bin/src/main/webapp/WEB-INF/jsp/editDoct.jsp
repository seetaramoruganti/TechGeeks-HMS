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
        <h2>Edit</h2>
        <form:form action="/addDoctor" method="post" modelAttribute="editedDoct">
            <table border="0" cellpadding="5">
                <tr>
                    <td>ID: </td>
                    <td><form:input path="docId" /></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><form:input path="docName" /></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><form:input path="docEmail" /></td>
                </tr>
                <tr>
                    <td>Adress: </td>
                    <td><form:input path="docAdd" /></td>
                </tr> 
                <tr>
                    <td>Phone: </td>
                    <td><form:input path="phoneNum" /></td>
                </tr>
                <tr>
                    <td>Department: </td>
                    <td><form:input path="docDept" /></td>
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