<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HMS Login</title>
</head>
<body>
	<div>
		<div class="main">

			<h3>Give Prescription</h3>

			<form:form action="/savepres" method="post" modelAttribute="pres">
				<caption>
					<p class="sign" align="center">Give Prescription</p>
				</caption>
				<form:input path="medicines" align="center"
					placeholder="medicine Name" />

				Forenoon-Before:
				<form:input path="fnb" align="center" placeholder="dose" />
					
				Forenoon-After:
				<form:input path="fna" align="center" placeholder="dose" />

				Afternoon-Before:
				<form:input path="anb" align="center" placeholder="dose" />

				Afternoon-After:
				<form:input path="ana" align="center" placeholder="dose" />
					
				Night-Before:
				<form:input path="ntb" align="center" placeholder="dose" />
					
				Night-After:
				<form:input path="nta" align="center" placeholder="dose" />

				<button class="submit" align="center" type="submit">Prescribe</button>
				
				<form:input path="aid" align="center" type="hidden" value="${aid}" />
				<form:input path="pid" align="center" type="hidden" value="${pid}" />
				<form:input path="did" align="center" type="hidden" value="${dId}"/>
				<form:input path="name" align="center" type="hidden" value="${name}"/>
				<br>

				<br>

			</form:form>
		</div>

	</div>

</body>
</html>