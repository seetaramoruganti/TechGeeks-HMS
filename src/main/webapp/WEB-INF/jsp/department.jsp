<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Home</title>
<link href="<c:url value="resources/DNPinAdminDash/adminforDNP.css" />"
	rel="stylesheet">
<link href="<c:url value="resources/DNPinAdminDash/DNP.css" />"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab&family=Zilla+Slab&display=swap"
	rel="stylesheet">
<script src="<c:url value="resources/admin/admin.js" />"></script>
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
	<div align="center">

		<h1>Departments List</h1>
		

		<%-- <form:form action="/searchDept" method="post">

			<input type="text" class="form-control" placeholder="Search">

		</form:form>
		 --%>

		
			<table  border=1px >
				<thead>
					<tr>
						<th>#</th>
						<th>Department Name</th>
						<th>Department Description</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${departmentList}" var="dept">
						<tr>
							<td>${dept.dept_id }</td>
							<td>${dept.deptName }</td>
							<td>${dept.deptDesc }</td>
							<td><button class="button button1">
									<a id="EditButton" href="editDept/${dept.dept_id}">Edit</a>
								</button></td>
							<td><button class="button button2">
									<a id="DeleteButton" href="deleteDept/${dept.dept_id}">Delete</a>
								</button></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button class="button button3">
			<a id="AddButton" href="addDepartment">Add Department</a>
		</button>
		</div>
</body>
</html>