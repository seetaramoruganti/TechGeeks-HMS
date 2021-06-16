<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
<link href="<c:url value="/resources/admin/admin.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/admin/admin.js" />"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap"
	rel="stylesheet">
<link href="<c:url value="/resources/patupdatePro/pro.css" />"
	rel="stylesheet">
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
				<li class="list_item"><a href="/images/${pId}">Medication
						History</a></li>
				<li class="list_item"><a href="/feedback">Feedback</a></li>
			</ul>
			<div class="spacer_box">
				<p>${pEmail}</p>
			</div>
		</div>
	</div>


	<div class="container">
		<form:form action="/updatePatient" method="post"
			modelAttribute="patient">
			<P>Update Profile</P>
			<form:input type="hidden" path="id" />
			<form:input type="hidden" path="email" />

			<form:input path="password" />


			<form:input path="address" />


			<form:input path="sex" />


			<form:input path="age" />


			<form:input path="bloodgrp" />


			<input type="submit" value="Update">

		</form:form>
		<div class="drops">
			<div class="drop drop-1"></div>
			<div class="drop drop-2"></div>
			<div class="drop drop-3"></div>
			<div class="drop drop-4"></div>
			<div class="drop drop-5"></div>
		</div>
	</div>

</body>
</html>