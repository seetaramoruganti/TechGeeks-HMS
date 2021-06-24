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

<title>Patient Home</title>
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
				<li class="list_item"><a href="/patientDocsList">Book
						Appointment</a></li>
				<li class="list_item"><a href="/updatePatientProfile/${pId}">Update
						Profile</a></li>
				<li class="list_item"><a href="/viewAppointment/${pId}">Appointments
						History</a></li>

				<li class="list_item"><a href="/feedback">Feedback</a></li>
			</ul>
			<div class="spacer_box">
				<p><font color="red">${pEmail}</font></p>
			</div>
		</div>
	</div>
	<div align="center">
		<table border=1px>
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Age</th>
					<th>Day</th>
					<th>Speciality</th>
					<th>Docid</th>
					<th>Description</th>
					<th>Test Reports</th>
					<th>Prescriptions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${appList}" var="aList">
					<tr>
						<td>${aList.name}</td>
						<td>${aList.email}</td>
						<td>${aList.contact}</td>
						<td>${aList.age}</td>
						<td>${aList.day}</td>
						<td>${aList.speciality}</td>
						<td>${aList.docid}</td>
						<td>${aList.description}</td>
						<td><button>
								<a href="/images/${aList.apid}">Upload Reports</a>
							</button></td>
						<td><button>
								<a href="/viewPres/${aList.apid}">View Prescription</a>
							</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>