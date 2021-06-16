<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>

<body>

		<h2>Patient Personal Details</h2>
		</div>
		
		<div class="table">
		 <table> 
		 	<tr><td><b>Patient Name :</b></td><td>${pat.name}</td></tr>
		<tr><td><b>Patient BloodGroup :</b></td><td>${pat.bloodgrp}</td></tr>
		<tr><td><b>Patient Email :</b></td><td>${pat.email}</td></tr>
		<tr><td><b>Patient City:</b></td><td>${pat.address}</td></tr>
		<tr><td><b>Patient Phone number :</b></td><td>${pat.mobile}</td></tr>
		<tr><td><b>Patient Dob :</b></td><td>${pat.dob}</td></tr>
		<tr><td><b>Gender :</b></td><td>${pat.sex}</td></tr>
	 
	    			
		</table>
	
		</div>
		
			

	<div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">View Medication History</button>
	</div>
	
	<div style="text-align: left;">
	 <button type="submit" class="btn_btn-primary" onclick="">Write Prescription</button>
	</div>


</body>
</html>