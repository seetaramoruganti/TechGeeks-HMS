<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/editDNPcss/EditDNP.css" />" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&family=Zilla+Slab&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Admin-add Nurse</title>
</head>
<body>

	<div align="center">
        <h2>Update Nurse Details</h2>
        <form:form action="/addNurse" method="post" modelAttribute="editedNurse" class="frm">
            <table border="0" cellpadding="5">
                <tr>
                    <td>ID: </td>
                    <td><form:input path="nurseId" /></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><form:input path="nurseName" /></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><form:input path="nurseEmail" /></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><form:input path="nurseAdd" /></td>
                </tr> 
                <tr>
                    <td>Phone: </td>
                    <td><form:input path="nurseNum" /></td>
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