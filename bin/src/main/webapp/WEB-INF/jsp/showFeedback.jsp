<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="resources/admin/admin.css" />"
	rel="stylesheet">
<script src="<c:url value="resources/admin/admin.js" />"></script>
<title>Feedback List</title>
</head>
<body>
	<div class="side_menu">
		<div class="burger_box">
			<div class="menu-icon-container">
				<a href="#" class="menu-icon js-menu_toggle closed"> <span
					class="menu-icon_box"> <span
						class="menu-icon_line menu-icon_line--1"></span> <span
						class="menu-icon_line menu-icon_line--2"></span> <span
						class="menu-icon_line menu-icon_line--3"></span>
				</span>
				</a>
			</div>
		</div>
		<div class="container">
			<h2 class="menu_title">Dash Board</h2>
			<ul class="list_load">
				<li class="list_item"><a href="adminHome">Home</a></li>
				<li class="list_item"><a href="department">Department</a></li>
				<li class="list_item"><a href="doctor">Doctors</a></li>
				<li class="list_item"><a href="patients">Patients</a></li>
				<li class="list_item"><a href="nurse">Nurse</a></li>
				<li class="list_item"><a href="viewFeedback">View Feedback</a></li>
				<li class="list_item"><a href="profile">Profile</a></li>
			</ul>
			<div class="spacer_box">
				<p>${aEmail}</p>
			</div>
		</div>
	</div>

	<div align="center">
		<h1>List of Feedback</h1>
		<table border=1px>
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Suggestion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${feedbackList}" var="flist">
					<tr>
						<td>${flist.name}</td>
						<td>${flist.email}</td>
						<td>${flist.contact}</td>
						<td>${flist.suggestion}</td>
						<td><a href="deleteFeedback/${flist.f_id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>