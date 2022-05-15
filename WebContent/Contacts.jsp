<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Com.Contacts"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Details</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/Contacts.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Application</h1>
				<form id="formItem" name="formItem">
					
                    DistrictCode <input id=" DistrictCode" name=" DistrictCode" type=text" class="form-control form-control-sm"> <br> 
					Description <input id="Description" name="Description" type="text" class="form-control form-control-sm"> <br> 
					ComplainNo <input id="ComplainNo" name="Link" type="ComplainNo" class="form-control form-control-sm"> <br>									
                    CustomerServiceNo <input id="CustomerServiceNo" name="CustomerServiceNo" type="number" class="form-control form-control-sm"> <br> 
					NewConnectionsNo <input id="NewConnectionsNo" name="NewConnectionsNo" type="number" class="form-control form-control-sm"> <br> 
					EmergencyNo <input id="EmergencyNo" name="EmergencyNo" type="number" class="form-control form-control-sm"> <br>
					Address <input id="Address" name="Address" type="number" class="form-control form-control-sm"> <br>

					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
					<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divItemsGrid">
					<%
					Contacts contactsObj = new Contacts();
								out.print(contactsObj.readContact());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>