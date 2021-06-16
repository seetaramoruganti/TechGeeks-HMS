<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload / Download</title>
</head>
<body>
	<div>
		<h3>Upload Test Reports</h3>
		<form id="uploadFiles" name="uploadFiles" method="post"
			th:action=@{/uploadFiles} encType="multipart/form-data">
			<input type="file" name="files" multiple required />
			<button type="submit">Submit</button>
		</form>
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
				<tr th:each="doc:${docs}">
					<td th:text="${doc.Id}" />
					<td th:text="${doc.docName}" />
					<td><a th:href="@{'/downloadFile/'+${doc.id}}">Download</a></td>


				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>