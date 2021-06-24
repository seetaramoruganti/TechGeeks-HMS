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
<%-- <link href="<c:url value="/resources/PatHome/pat.css" />"
	rel="stylesheet"> --%>
<title>Patient Home</title>
</head>
<body>
	<h1 class="page_title">Welcome ${pEmail} !!!</h1>
	
	<h4 class="what_to_do">Here are the Updates for u</h4>
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
				<li class="list_item"><a href="patientDocsList">Book
						Appointment</a></li>
				<li class="list_item"><a href="updatePatientProfile/${pId}">Update
						Profile</a></li>
				<li class="list_item"><a href="viewAppointment/${pId}">Appointments
						History</a></li>

				<li class="list_item"><a href="feedback">Feedback</a></li>
			</ul>
			<div class="spacer_box">
				<p>
					<font color="red">${pEmail}</font>
				</p>
			</div>
		</div>
	</div>
	<!-- 	<a href="#">
		<figure>
			<div class="date">
				<span class="card-date-day">20</span><span class="card-date-month">APR</span>
			</div>
			<figcaption>
				<h4>
					<span>The arsonist had oddly shaped feet</span>
				</h4>
				<p>The magic Indian is a mysterious spiritual force, and we're
					going to Cathedral Rock, and that's the vortex of the heart.</p>
			</figcaption>
		</figure>
	</a> -->

</body>
</html>