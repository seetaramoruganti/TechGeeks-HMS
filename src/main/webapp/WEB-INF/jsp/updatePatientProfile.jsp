<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="/resources/editDNPcss/EditDNP.css" />" rel="stylesheet">
<link href="<c:url value="resources/DNPinAdminDash/DNP.css" />" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&family=Zilla+Slab&display=swap" rel="stylesheet">
<title>Update Profile</title>
<style>
.frm{
margin-left: 33%;
}
</style>
</head>
<body>
	<%-- <div class="side_menu">
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

 --%>
	<div class="container">
	<h2>Update Patient Profile</h2>
		<form:form action="/updatePatient" method="post"
			modelAttribute="patient" class="frm">
			<table border="0" cellpadding="5">
				<!-- <tr>
					<td>Id:</td>
					<td> --><form:input type="hidden" path="id"  /><!-- </td>
				</tr> -->
				<!-- <tr>
					<td>Id:</td>
					<td> --><form:input type="hidden" path="email"  /><!-- </td>
				</tr> -->
				
				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				
 				<tr>
					<td>Password:</td>
					<td><form:input path="password" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td>Sex:</td>
					<td><form:input path="sex" /></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td>Blood Gp:</td>
					<td><form:input path="bloodgrp" /></td>
				</tr>
				<tr>
					<td>D.O.B:</td>
					<td><form:input path="dob" type="date" /></td>
				</tr>
				<tr>
					<td>Moile:</td>
					<td><form:input path="mobile" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Update"></td>
				</tr>
			</table>
			
			

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