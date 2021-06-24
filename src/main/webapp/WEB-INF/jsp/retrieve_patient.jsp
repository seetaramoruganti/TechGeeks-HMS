<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<link href="<c:url value="resources/DNPinAdminDash/adminforDNP.css" />"
	rel="stylesheet">
<link href="<c:url value="resources/DNPinAdminDash/DNP.css" />"
	rel="stylesheet">
<script src="<c:url value="resources/admin/admin.js" />"></script>
<title>Doctor Home</title>
<style>
h2 {
	margin-left: 10%;
}
</style>
</head>
<body>
<h2  align="center">Patient Personal Details</h2>
	<div align="center">
		


	<div class="table">
		<table border="1">
			<tr>
				<td><b>Patient Name :</b></td>
				<td>${pat.name}</td>
			</tr>
			<tr>
				<td><b>Patient BloodGroup :</b></td>
				<td>${pat.bloodgrp}</td>
			</tr>
			<tr>
				<td><b>Patient Email :</b></td>
				<td>${pat.email}</td>
			</tr>
			<tr>
				<td><b>Patient City:</b></td>
				<td>${pat.address}</td>
			</tr>
			<tr>
				<td><b>Patient Phone number :</b></td>
				<td>${pat.mobile}</td>
			</tr>
			<tr>
				<td><b>Patient Dob :</b></td>
				<td>${pat.dob}</td>
			</tr>
			<tr>
				<td><b>Gender :</b></td>
				<td>${pat.sex}</td>
			</tr>


		</table>

	</div>
	</div>



	<!-- <div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">View Medication History</button>
	</div>
	
	<div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">Write Prescription</button>
	</div> -->


</body>
</html>