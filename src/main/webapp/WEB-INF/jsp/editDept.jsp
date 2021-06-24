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
<meta charset="ISO-8859-1">
<title>Admin-add Department</title>
</head>
<body>

	<div align="center">
        <h2>Edit</h2>
        <form:form action="/addDepartment" method="post" modelAttribute="editedDept" class="frm">
            <table border="0" cellpadding="5">
                <tr>
                    <td>ID: </td>
                    <td><form:input path="dept_id" /></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><form:input path="deptName" /></td>
                </tr>
                <tr>
                    <td>Pass: </td>
                    <td><form:input path="deptDesc" /></td>
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