<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Home</title>
<link href="<c:url value="resources/admin/admin.css" />"
	rel="stylesheet">
<script src="<c:url value="resources/admin/admin.js" />"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="<c:url value="resources/tables/tables.css" />"
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
				<li class="list_item"><a href="adminHome">Home</a></li>
				<li class="list_item"><a href="department">Department</a></li>
				<li class="list_item"><a href="doctor">Doctors</a></li>
				<li class="list_item"><a href="patients">Patients</a></li>
				<li class="list_item"><a href="nurse">Nurse</a></li>
				<li class="list_item"><a href="viewFeedback">View Feedback</a></li>
				<li class="list_item"><a href="profile">Profile</a></li>
			</ul>
			<div class="spacer_box">
				<p>${aEmail}</p>
			</div>
		</div>
	</div>
	<div class="container" align="center">
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<div class="panel">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-sm-3 col-xs-12">
								<h4 class="title">
									Departments <span>List</span>
								</h4>
							</div>
							<div class="col-sm-9 col-xs-12 text-right">
								<form:form action="/searchDept" method="post">
									<div class="btn_group">
										<input type="text" class="form-control" placeholder="Search">
									</div>
								</form:form>
								<button type="button">
									<a href="addDepartment">Add Department</a>
								</button>
							</div>
						</div>
					</div>
					<div class="panel-body table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Department Name</th>
									<th>Department Description</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${departmentList}" var="dept">
									<tr>
										<td>${dept.dept_id }</td>
										<td>${dept.deptName }</td>
										<td>${dept.deptDesc }</td>
										<td>
											<ul class="action-list">
												<li><a href="editDept/${dept.dept_id}" data-tip="edit"><i
														class="fa fa-edit"></i></a></li>
												<li><a href="deleteDept/${dept.dept_id}"
													data-tip="delete"><i class="fa fa-trash"></i></a></li>
											</ul>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>