<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><center>Uploading Test Reports</center></h1>
<center>
<form action="/success/{pId}"  method="post" modelAttribute="uf" >
<input type="text" name = "file_name" placeholder="Enter File Name"><br>
<input type="text" name = "file_type" placeholder="Enter File Type"><br>
<input type="file" name = "file_data" placeholder="Upload File"><br>
<button type="submit" value ="upload">Submit</button>
</center>
</form>
</body>
</html>