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
<title>View Appointments</title>
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
				<li class="list_item"><a href="/AppointmentsListWtDoc/${dId}">My
						Appointment</a></li>
				<li class="list_item"><a href="/updateDoctorProfile/${dId}">Update
						Profile</a></li>
				<li class="list_item"><a href="/viewAppointmentwtDoc/${dId}">View
						Patient History </a></li>
				<li class="list_item"><a href="/search">Search a Patient</a></li>
			</ul>
			<div class="spacer_box">
				<p>${dEmail}</p>
			</div>
		</div>
	</div>
	<h1 align="center">Appointment History</h1>

	<div align="center">
		<table border=1px>
			<thead>
				<tr>
					<th>Appointment Id</th>
					<th>Date of Appointment</th>
					<th>patient Name</th>
					<th>Patient Email</th>
					<th>Patient Phone</th>
					<th>patient Age</th>
					<th>Issue Description</th>
					<th>Reports</th>
					<th>Prescribe</th>
					<th>Prescription History</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${applist}" var="app">
					<tr>
						<td>${app.apid}</td>
						<td>${app.day}</td>
						<td>${app.name}</td>
						<td>${app.email}</td>
						<td>${app.contact}</td>
						<td>${app.age}</td>
						<td>${app.description}</td>
						<td><a href="/download/${app.apid}">Download reports</a></td>
						<td><a href="/prescribe/${app.apid}">Prescribe</a></td>
						<td><a href="/presHist/${app.apid}">Prescription History</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>