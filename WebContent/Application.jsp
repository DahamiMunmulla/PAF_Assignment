<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="Com.Application"%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
<title>Consumer</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/Application.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Application</h1>
				<form id="formItem" name="formItem">
					
                    ServiceType <input id="ServiceType" name="ServiceType" type=text" class="form-control form-control-sm"> <br> 
					Description <input id="Description" name="Description" type="text" class="form-control form-control-sm"> <br> 
					Link <input id="Link" name="Link" type="text" class="form-control form-control-sm"> <br>

					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
					<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divItemsGrid">
					<%
					 Application consumerObj = new Application();
								out.print(consumerObj.getPdf());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>