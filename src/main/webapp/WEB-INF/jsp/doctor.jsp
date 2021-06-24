<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<link href="<c:url value="resources/DNPinAdminDash/adminforDNP.css" />" rel="stylesheet">
<link href="<c:url value="resources/DNPinAdminDash/DNP.css" />" rel="stylesheet">
<script src="<c:url value="resources/admin/admin.js" />"></script>
<title>Doctor Home</title>
</head>
<!-- <img src="/resources/DocHomeImg/blurhos.jpg" width=100% height=100%> -->
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
				<li class="list_item"><a href="search">Search a Patient</a></li>
				<li class="list_item"><a href="updateAdminProfile/${adminId}">Update Profile</a></li>
			</ul>
			<div class="spacer_box">
				<p><font color="red">${adminEmail}</font></p>
			</div>
		</div>
		
	</div>
		<div class="tbl-header" align="center">
			<h1>List of Available Doctors in Hospital</h1>
			<table  border=1px >
				<thead>
					<tr>
						<th>Doctor Name</th>
						<th>Doctor Email</th>
						<th>Doctor Address</th>
						<th>Doctor Phone</th>
						<th>Doctor Department</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<div class="tbl-content">
				<tbody>
					<c:forEach items="${doctorList}" var="doct">
						<tr>
							<td>${doct.docName}</td>
							<td>${doct.docEmail}</td>
							<td>${doct.docAdd}</td>
							<td>${doct.phoneNum}</td>
							<td>${doct.docDept}</td>
							<%-- <a href="editDoct/${doct.docId}">EDIT</a> --%>
							<%-- <a href="deleteDoct/${doct.docId}" >DELETE</a> --%>
							<td><button class="button button1"><a id="EditButton" href="editDoct/${doct.docId}">Edit</a></button></td>
							<td><button class="button button2"><a id="DeleteButton" href="deleteDoct/${doct.docId}" >Delete</a></button></td>
						</tr>
					</c:forEach>
				</tbody>
				</div>
			</table>
			<!-- 		<button type="button">
				<a href="addDoctor">Add Doctor</a>
			</button> -->
			<button class="button button3"><a id="AddButton" href="addDoctor" >Add Doctor</a></button>
		</div>
		
</body>
</html>