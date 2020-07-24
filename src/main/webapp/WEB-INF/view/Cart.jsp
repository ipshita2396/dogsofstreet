<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
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
	<section class="jumbotron">
	
	<h1>Cart</h1>
	
	<p>All the Products</p>
	
	</section>
<section class="container "data-ng-app="cartApp">
<div ng-controller="cartCtrl" ng-init="initCardId('${cartId}')">
	<div>
	<a  href="#"class="btn btn-danger" ng-click="clearCart()" role="button">Clear Cart</a>
	</div>
	<br>
	<br>
<table class="table table-hover">
<tr>
<td>Product</td>
<td>Unit price</td>
<td>Quantity</td>
<td>Price</td>
<td>Action</td>
</tr>
<tr ng-repeat="items in cart.cartItem">
<td>{{item.product.productName}}</td>
<td>{{item.product.productPrice}}</td>
<td>{{item.quantity}}</td>
<td>{{itemtotalPrice}}</td>
<td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
<span class="glyphicon glyphicon-remove"></span>remove</a></td>
</tr>
<tr>
                    <th></th>
                    <th></th>
                    <th>Grand Total</th>
                    <th>{{calGrandTotal()}}</th>
                    <th></th>
                </tr>
</table>
	
	<div>
	
	<a href="<c:url value="/productList"/>" class ="btn btn-danger"role= "Button">Continue Shopping</a>
	</div>
	</div>
	</section>	
	</div>

</div>
<script src="<c:url value="/resources/controller.js" /> "></script>
</body>
</html>