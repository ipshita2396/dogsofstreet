<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event List</title>
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
                            <li><a><h4>Welcome: ${pageContext.request.userPrincipal.name}</h4></a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" /> "><h4>Logout</h4></a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />"><h4>Cart</h4></a></li>
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
<h1>All the Volunteers</h1>
<table class= "table table-hover">
    <thead>
    <tr>
    	
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Event Name</th>
    </tr>
    </thead>
    
    <c:forEach items="${volunteers}" var="volunteers">
    <tr>
    
        <td>${volunteers.volunteerName}</td>
        <td>${volunteers.volunteerAge}</td>
        <td>${volunteers.volunteerGender}</td>
        <td>${volunteers.volunteerEmail}</td>
        <td>${volunteers.volunteerContact}</td>
        <td>${volunteers.volunteerEvent}</td>
</tr>
</c:forEach>
</table>

</div>
</div>

</body>
</html>