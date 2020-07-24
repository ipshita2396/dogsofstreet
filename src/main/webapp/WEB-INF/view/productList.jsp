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
  <title>ProductList</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="<c:url value="/resources/css/main2.css" />" rel="stylesheet">
  </head>

<nav class="navbar navbar-inverse">

  <div class="container-fluid">

    <div class="navbar-header">
    	<img class ="img-responsive" src="<c:url value="/resources/Images/adopt.jpg"/>" height="48px" width="50px"/>
    </div>
      <a class="navbar-brand brand" href="<c:url value="/" />"><strong>&nbsp <bold>DogOfStreet</bold></strong></a>
    
  
                    <ul class="nav navbar-nav navbar-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" /> "><h4>Logout</h4></a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />"><h4>Cart</h4>></a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />"><h4>Admin</h4></a></li>
                            </c:if>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a href="<c:url value="/login/" />" class="active"><h4>Login</h4></a></li>
                        <li><a href="<c:url value="/register" />" class="active"><h4>Register</h4></a></li>
                        </c:if>
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
    <td><img src="<c:url value="/resources/Images/${product.productId}.png" /> " alt="image" style="width:100%"/></td>
        <td>${product.productName}</td>
        <td>${product.productCategory}</td>
        <td>${product.productDiscription}</td>
        <td>${product.productPrice}</td>
        <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />">
   			<span class="glyphicon glyphicon-info-sign"></span></a></td>
</tr>
</c:forEach>
</table>
</div>
</div>
</body>
</html>
