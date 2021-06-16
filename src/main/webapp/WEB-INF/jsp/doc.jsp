<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Upload / Download</title>
</head>
<body>
	<div>
		<h3>Upload Test Reports</h3>
		<form:form method="post" action="/uploadFiles"
			encType="multipart/form-data" modelAttribute="doc">
			<form:input type="file" path="data" multiple required />
			<button type="submit">Submit</button>
		</form:form>
	</div>

	<div>
		<h3>List of Documents uploaded</h3>
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Download Link</th>
				</tr>
			</thead>
			<tbody>
				<%-- 	<tr th:each="doc:${docs}">
					<td th:text="${doc.Id}" />
					<td th:text="${doc.docName}" />
					<td><a th:href="@{'/downloadFile/'+${doc.id}}">Download</a></td>


				</tr> --%>
				<c:forEach items="${docs}" var="doc">
					<td>${doc.Id}</td>
					<td>{doc.docName}</td>
					<td><a href="/downloadFile/${doc.id}">Download</a></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>