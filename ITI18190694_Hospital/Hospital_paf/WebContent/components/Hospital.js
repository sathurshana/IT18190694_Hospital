$(document).ready(function()
		{
	
	if ($("#alertSucces").text().trim() == "")
		{
		  $("#alertSuccess").hide();
		}
	$("#alertError").hide();
	
		})
		
//SAVE===================================================
$(document).on("click", "#btnSave" , function(event)
		{
	
	       //Clear alerts---------
	       $("#alertSuccess").text("");
	       $("#alertSuccess").hide();
	       $("#alertError").text("");
	       $("#alertError").hide();
	       
	       //Form validation------------------
	       var status = validateHospitalForm();
	       if(status != true)
	    	   {
	    	   $("#alertError").text(status);
	    	   $("#alertError").show();
	    	   return;
	    	   }
	       
	       //If valid-------------
	       $("#formHospital").submit();
		});

//UPDATE==================================
$(document).on("click" , "btnUpdate" , function(event)
		{
	$("#hidhostIDSave").val($(this).closest("tr").find('#hidhostIDUpdate').val());
	$("#teleNo").val($(this).closest("tr").find('td.eq(0)').text());
	$("#hostName").val($(this).closest("tr").find('td.eq(1)').text());
	$("#location").val($(this).closest("tr").find('td.eq(2)').text());
		})
	       
	//CLIENT - MODEL====================
function validationHospitalForm()
    {
	//CODE
	if($("#hostID").val().trim() == "")
		{
		 return "Insert hospital ID.";
		}
	//TELEPHONE NUMBER
	if($("#teleNo").val().trim() == "")
		{
		 return "Insert telephone number.";
		}
	//HOSTPITAL NAME
	if($("#hostName").val().trim() == "")
		{
		 return "Insert Hostpitalname.";
		}
	//HOSTPITAL LOCATION
	if($("#location").val().trim() == "")
		{
		 return "Insert Hostpitalname.";
		}	
	return true;
	
	
		}