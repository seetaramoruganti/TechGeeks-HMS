<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<c:url value="resources/admin/admin.css" />"
	rel="stylesheet">
<script src="<c:url value="resources/admin/admin.js" />"></script>
<title>Doctor Home</title>
<style>
/* The switch - the box around the slider */
.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

/* Hide default HTML checkbox */
.switch input {
	opacity: 0;
	width: 0;
	height: 0;
}

/* The slider */
.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}
</style>

</head>
<body>
	<h1 class="page_title">Welcome ${dEmail} !!!</h1>
	<h4 class="what_to_do">Here are the Updates for u</h4>
	<div align="center">
		<!-- Rectangular switch -->
		<form:form action="switchStatus" onclick="submit">
			<label class="switch"> <input name="status" id="status" type="checkbox"> <span
				class="slider"></span>
			</label>
		</form:form>
	</div>
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
				<li class="list_item"><a href="viewAppointmentwtDoc/${dId}">View
						Patient History </a></li>
				<li class="list_item"><a href="search">Search a Patient</a></li>
			</ul>
			<div class="spacer_box">
				<p>${dEmail}</p>
			</div>
		</div>
	</div>
</body>
</html>