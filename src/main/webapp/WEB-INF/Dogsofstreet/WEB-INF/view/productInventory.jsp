<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/2/2016
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>ProductInventory</title>
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
     <li><a href="signup.php"><span class="glyphicon glyphicon-user"></span><strong> Sign Up</strong></a></li>
      <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> <strong>Login</strong></a></li>

    </ul>
</div>
</nav>

<body>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header"></div>
<h1>All the Products</h1>
<table class= "table table-hover">
    <thead>
    <tr>
    	<th></th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Category</th>
        <th>Description</th>
        <th></th>
    </tr>
    </thead>
    
    <c:forEach items="${products}" var="product">
    <tr>
    	<td><img src="#" alt="img"></img></td>
        <td>${product.productName}</td>
        <td>${product.productCategory}</td>
        <td>${product.productDiscription}</td>
        <td>${product.productPrice}</td>
        <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />">
   			<span class="glyphicon glyphicon-info-sign"></span></a></td>
   		<td>	<a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a></td>
   			
</tr>
</c:forEach>
</table>
<a href="<c:url value="/admin/productInventory/createProduct"/>" class="btn btn-danger" value="Add product"></a>
</div>
</div>
</body>
</html>
