<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<c:url value="/resources/admin/admin.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/admin/admin.js" />"></script>
<title>My Appointments</title>
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
				<li class="list_item"><a href="AppointmentsListWtDoc/${dId}">My
						Appointment</a></li>
				<li class="list_item"><a href="updateDoctorProfile/${dId}">Update
						Profile</a></li>
				<li class="list_item"><a href="viewAppointment">View
						Patient History </a></li>
			</ul>
			<div class="spacer_box">
				<p>${dEmail}</p>
			</div>
		</div>
	</div>
	<div align="center">
		<h1>List of My Appointments</h1>
		<table border=1px>
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Age</th>
					<th>Consultation date</th>
					<th>description</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${docapps}" var="app">
					<tr>
						<td>${app.name}</td>
						<td>${app.email}</td>
						<td>${app.contact}</td>
						<td>${app.age}</td>
						<td>${app.day}</td>
						<td>${app.description}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>