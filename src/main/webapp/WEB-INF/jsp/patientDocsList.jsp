<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="images/logo.png" rel="icon" /> -->
<link href="<c:url value="resources/admin/admin.css" />" rel="stylesheet">
<script src="<c:url value="resources/admin/admin.js" />"></script>	
<title>Patient Home</title>
<!-- <link href="resources/css1/bootstrap.min.css" rel="stylesheet">
<link href="resources/css1/style.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$('#doctorlist').show();
		$('.doctor li:first-child a').addClass('active');
		$('.doctor li a').click(function(e) {

			var tabDiv = this.hash;
			$('.doctor li a').removeClass('active');
			$(this).addClass('.active');
			$('.switchgroup').hide();
			$(tabDiv).fadeIn();
			e.preventDefault();

		});

	});
</script> -->
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
			<h1 align="center">List of Available Doctors in Hospital</h1>

			<div align="center">
				<table border=1px>
					<thead>
						<tr>
							<th>Doctor Id</th>
							<th>Doctor Name</th>
							<th>Doctor Email</th>
							<th>Doctor Phone</th>
							<th>Doctor Department</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${DocsList}" var="doct">
							<tr>
								<td>${doct.docId}</td>
								<td>${doct.docName}</td>
								<td>${doct.docEmail}</td>
								<td>${doct.phoneNum}</td>
								<td>${doct.docDept}</td>
								<td><a href="bookAppointment/${doct.docId}">Book
										Appointment</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
</body>
</html>