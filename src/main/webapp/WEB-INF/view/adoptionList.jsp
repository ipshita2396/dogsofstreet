<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adoption List</title>
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

<body>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header"></div>
<h1>Applicants for Adoption</h1>
<table class= "table table-hover">
    <thead>
    <tr>
    	
        <th>Name</th>
        <th>Age</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Type of Document</th>
        <th>Id<th>
    </tr>
    </thead>
    
    <c:forEach items="${adoption}" var="adoption">
    <tr>
    
        <td>${adoption.adoptionName}</td>
        <td>${adoption.adoptionAge}</td>
        <td>${adoption.adoptionEmail}</td>
        <td>${adoption.adoptionContact}</td>
        <td>${adoption.idType}</td>
        
</tr>
</c:forEach>
</table>

</div>
</div>

</body>
</html>