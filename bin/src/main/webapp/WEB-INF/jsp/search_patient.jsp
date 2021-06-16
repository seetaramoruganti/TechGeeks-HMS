<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">

</head>
<body>
	<div align="center">
		<form action="/retrieve_patient" method="post">
			Email Id <input type="text" name="email" placeholder="Enter Email Id">
			<input type="submit" value="Search">
		</form>
	</div>

	<p align="center">
		<font color="red">${msg}</font>
	</p>
</body>
</html>