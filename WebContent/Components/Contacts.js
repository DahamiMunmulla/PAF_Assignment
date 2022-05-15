$(document).ready(function() {

	$("#alertSuccess").hide();

	$("#alertError").hide();
});
// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	// Form validation-------------------
	var status = validateItemForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	// If valid------------------------
	var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT";
	$.ajax(
		{
			url: "ConsumerAPI",
			type: type,
			data: $("#formItem").serialize(),
			dataType: "text",
			complete: function(response, status) {
				onItemSaveComplete(response.responseText, status);
			}
		});
});



function onItemSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidItemIDSave").val("");
	$("#formItem")[0].reset();
}


// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) {
	$("#hidItemIDSave").val($(this).data("itemid"));
	$("#DistrictCode").val($(this).closest("tr").find('td:eq(0)').text());
	$("#Description").val($(this).closest("tr").find('td:eq(1)').text());
	$("#ComplainNo").val($(this).closest("tr").find('td:eq(2)').text());
	$("#CustomerServiceNo").val($(this).closest("tr").find('td:eq(3)').text());
	$("#NewConnectionsNo").val($(this).closest("tr").find('td:eq(4)').text());
	$("#EmergencyNo").val($(this).closest("tr").find('td:eq(5)').text());
	$("#Address").val($(this).closest("tr").find('td:eq(6)').text());

});





//Delete=============================================
$(document).on("click", ".btnRemove", function(event) {
	$.ajax(
		{
			url: "ConsumerAPI",
			type: "DELETE",
			data: "consumerNo=" + $(this).data("itemid"),
			dataType: "text",
			complete: function(response, status) {
				onItemDeleteComplete(response.responseText, status);
			}
		});
});



function onItemDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}





// CLIENT-MODEL================================================================
function validateItemForm() {
	// accountNo
	if ($("#DistrictCode").val().trim() == "") {
		return "Insert accountNo.";
	}
	// NAME
	if ($("#Description").val().trim() == "") {
		return "Insert Description.";
	}
	// PRICE-------------------------------
	if ($("#ComplainNo").val().trim() == "") {
		return "Insert ComplainNo.";
	}

	// DESCRIPTION------------------------
	if ($("#CustomerServiceNo").val().trim() == "") {
		return "Insert CustomerServiceNo.";
	}
	
		if ($("#NewConnectionsNo").val().trim() == "") {
		return "Insert New ConnectionNo.";
	}
	
		if ($("#EmergencyNo ").val().trim() == "") {
		return "Insert Item Price.";
	}
		if ($("#Address").val().trim() == "") {
		return "Insert Address.";
	}
	
	return true;
}