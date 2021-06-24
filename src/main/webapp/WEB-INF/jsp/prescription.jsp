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
<title>HMS Login</title>
<style>
.frm{
 margin-left: 36%;
}

h3{
 margin-left: 43%;
 font-size: 33px;
}
.button {
  background-color: rgba(0, 20, 60, .9); /* dashboard color */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

button a{
	color:white;
	font-family: 'Roboto Slab', serif;
} 
.button3 {border-radius: 12px;}
</style>
</head>
<body>
	<div>
		<div class="main">

			<h3>Give Prescription</h3>

			<form:form action="/savepres" method="post" modelAttribute="pres" class="frm">
				<caption>
					<p class="sign" align="center"></p>
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

				<button class="button button3" align="center" type="submit">Prescribe</button>
				
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