<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<meta charset="ISO-8859-1">
<title>FeedBack Form</title>
</head>
<body>
	<div class="container contact-form">
		<div class="contact-image">
			<img src="https://image.ibb.co/kUagtU/rocket_contact.png"
				alt="rocket_contact" />
		</div>
		<form:form action="saveFeedback" method="post"
			modelAttribute="feedback">
			<h3>Drop Us a Message</h3>
			<div class="row">
				<div class="col-md-6">

					<div class="form-group">
						<form:input class="form-control" type="text" path="name"
							placeholder="Your Name *" value=""
							style="font-family:Arial, FontAwesome" />
					</div>

					<div class="form-group">
						<form:input class="form-control" type="text" path="email"
							placeholder="Your Email *" value=""
							style="font-family:Arial, FontAwesome" />
					</div>

					<div class="form-group">
						<form:input class="form-control" type="text" path="contact"
							placeholder="Your Phone Number *" value=""
							style="font-family:Arial, FontAwesome" />
					</div>
					<div class="form-group">
						<button class="btnContact" align="center" type="submit">Suggest</button>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<form:textarea class="form-control" path="suggestion"
							name="suggestion" placeholder="Your Suggestion *"
							style="width: 100%; height: 150px;"></form:textarea>
					</div>
				</div>


			</div>
		</form:form>
	</div>
</body>
</html>


















<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>FeedBack Form</title>

</head>
<body>
	
	<form:form action="saveFeedback" method="post"
		modelAttribute="feedback">

		<p>
			<form:input type="text" path="name" placeholder="Your Name *"
				value="" style="font-family:Arial, FontAwesome" />
		</p>

		<p>
			<form:input type="text" path="email" placeholder="Your Email *"
				value="" style="font-family:Arial, FontAwesome" />
		</p>

		<p>
			<form:input type="text" path="contact"
				placeholder="Your Phone Number *" value=""
				style="font-family:Arial, FontAwesome" />
		</p>

		<p>
			<form:textarea path="suggestion" name="suggestion" placeholder="Your Suggestion *"
				style="width: 100%; height: 150px;"></form:textarea>
		</p>

		<button align="center" type="submit">Suggest</button>
	</form:form>

	<!------ Include the above in your HEAD tag ---------->

	<div class="container contact-form">
		<div class="contact-image">
			<img src="https://image.ibb.co/kUagtU/rocket_contact.png"
				alt="rocket_contact" />
		</div>
		<from:form action="saveFeedback" modelAttribute="feedback" method="post">
			<h3>Drop Us a Message</h3>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<form:input type="text" path="name" placeholder="Your Name *"
							class="form-control" value="" />
					</div>
					<div class="form-group">
						<form:input type="text" path="email" placeholder="Your Email *"
							class="form-control" value="" />
					</div>
					<div class="form-group">
						<form:input type="text" path="contact"
							placeholder="Your Phone Number *" value="" class="form-control" />
					</div>
					<div class="form-group">
						<button type="submit" class="btnContact"
							value="Send Message" ></button>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<form:textarea path="suggestion" name="suggestion"
							placeholder="Your Suggestion *" class="form-control"
							style="width: 100%; height: 150px;"></form:textarea>
					</div>
				</div>
			</div>
		</from:form>
	</div>
</body>
</html> --%>