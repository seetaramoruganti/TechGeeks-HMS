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
	<div align="center">
		<h1>Prescription History</h1>
		<p align="center"><p align="center">
			<font color="red">${msg}</font>
		</p></p>

		<table border=1px>
			<thead>
				<tr>
					<th>Patient Details</th>
					<th>Medicine</th>
					<th>FN-B</th>
					<th>FN-A</th>
					<th>AN-B</th>
					<th>AN-A</th>
					<th>NT-B</th>
					<th>NT-A</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${presHist}" var="pres">
					<tr>
						<td>Appointment Id: ${pres.aid} <br>Date of Appointment:
							${pres.date} <br>patient Name: ${pres.name} <br> Issue
							Description <br>Prescription History
						</td>
						<td>${pres.medicines}</td>
						<td>${pres.fnb}</td>
						<td>${pres.fna}</td>
						<td>${pres.anb}</td>
						<td>${pres.ana}</td>
						<td>${pres.ntb}</td>
						<td>${pres.nta}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>