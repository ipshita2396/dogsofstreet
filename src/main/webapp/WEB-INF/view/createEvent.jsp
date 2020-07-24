<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Event</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<nav class="navbar navbar-inverse">

  <div class="container-fluid">

    <div class="navbar-header">
    	<img class ="img-responsive" src="Images/main.png" height="48px" width="50px"/>
    </div>
      <a class="navbar-brand brand" href="index.html"><strong>&nbsp DogOfStreet</strong></a>
    
    
    <ul class="nav navbar-nav navbar-right">
    	<li class="nav-item dropdown">
    			<a href="#"  class=" nav-link dropdown-toggle" data-toggle="dropdown" data-target="data-target">Products
    			<span class="caret"></span></a>
    			<div class ="dropdown-menu" aria-labelby="dropdown-target">
    				<div class="dropdown-item">

    				<a href ="#" class="dropdown-item">T-shirt</a><br>
    					<div class="dropdown-divider"></div>
    				<a href ="#" class="dropdown-item">Mugs</a><br>
    					<div class="dropdown-divider"></div>
    				<a href ="#" class="dropdown-item">Accessories</a>
    			</div>
    			
    		</div>
    	</li>
     <li><a href="<c:url value="/productList" />"><span class="glyphicon glyphicon-user"></span><strong>Product</strong></a></li>
      <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> <strong>Login</strong></a></li>

    </ul>
</div>
</nav>

</head>
<body>
	<script type="text/javascript">
  		function showMessage()
  		{
  			alert("Form Sumbitted");
  		}
  	</script>
  	<div class="Container">
  	<div class="col-xs-4">
  		<div class="row justify-content-center">
  	
  	<p><h1 class="text-left">Add Event</h1></p>
  </br>
</br>
  		<form:form action="${pageContext.request.contextPath}/admin/EventList/createEvent" method="POST" commandName="event" enctype="multipart/form-data" >
  			<div class="form-group">
  				<label for="eventname">Name</label><form:errors path="eventName"/>
  				<form:input path="eventName" id="eventname" placeholder="Enter the Event Name" class="form-control" />
  			</div>
  			
  			
  			
  			<div class="from-group">
  				<label for="eventdescription">Description</label>
  				<form:textarea path="eventDesicription"  id="eventdescription" placeholder="Enter your Comments"  class="form-control" row="5" />
  			</div>
  			<div class="form-group">
  				<label for="eventdate">Date</label><form:errors path="date"/>
  				<form:input path="date" id="eventdate" placeholder="Enter the date in yyyy/mm/dd format" class="form-control" />
  			</div>
  	
  	<div class="from-group">
  				<label for="eventlocation">Location</label>
  				<form:input path="eventLocation" class="form-control" id="eventlocation"  />
  			</div>
  		
  			<input type="submit" name="Submit" Value="Submiit" class="btn btn-primary" onclick='showMessage()'>
  		
  		</form:form>
  	</div>
  	</div>
  </div>


</body>

</html>