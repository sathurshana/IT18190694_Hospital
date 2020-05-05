<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Vertical (basic) form</h2>
  <form action="/action_page.php">
  
    <div class="form-group">
      <label for="hostID">Hospital Id</label>
      <input type="text" class="form-control" id="hostID" placeholder="Enter id" name="hostID">
    </div>
    
    <div class="form-group">
      <label for="teleNo">Phone No:</label>
      <input type="text" class="form-control" id="teleNo" placeholder="Enter phone no" name="teleNo">
    </div>
    
    
    <div class="form-group">
      <label for="email">Hospital name:</label>
      <input type="text" class="form-control" id="hostName" placeholder="Enter name" name="hostName">
    </div>
    
    <div class="form-group">
      <label for="pwd">Location:</label>
      <input type="text" class="form-control" id="location" placeholder="Enter location" name="location">
    </div>
    

    
    <div>
    <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-default">
    </div>
    
     <div>
   <input type="hidden" id="hidhostIDSave" name="hidhostIDSave" value="">
   </div>
   
  </form>
  
  <div id="alertSuccess" class="alert alert-success">
  <%
    out.print(session.getAttribute("statusMsg"));
  %>
</div>

<div id="alertError" class="alert alert-danger"></div>>

<br>
<%
Item itemObj = new Item();
out.print(itemObj.readItems());
%>

</body>
</html>