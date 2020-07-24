<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registeration Form</title>
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

</head>
<body>
	<script type="text/javascript">
  		function showMessage()
  		{
  			alert(" Congrats!! You have successfully Registered");
  		}
  	</script>
  	<div class="Container">
  	<div class="col-xs-4">
  		<div class="row justify-content-center">
  	
 
  </br>
</br>
<div class="form1">
  	<p><h1 class="text-left">Sign Up!</h1></p>
  		<form:form action="${pageContext.request.contextPath}/register" method="POST" commandName="customer" >
  			<div class="form-group">
  				<label for="customername"> Full Name</label>
  				<form:input path="customerName" id="customername" placeholder="Enter your full name" class="form-control" />
  			</div>
  			
  			  			 
  			 <div class="form-group">
  				<label for="customereremail">Email</label>
  				<form:input path="customerEmail" id="customeremail" placeholder="Enter your Email" class="form-control" />
  			</div>
  			<div class="form-group">
  				<label for="customercontact">Contact</label>
  				<form:input path="customerContact" id="customercontact" placeholder="Enter your mobile no" class="form-control" />
  			</div>
  			
  			<div class="from-group">
  				<label for="customerusername">UserName</label>
  				<form:input path="customerUsername" class="form-control" id="customerusername" placeholder="Enter your username "  />
  			</div>
  			
  			<div class="from-group">
  				<label for="customerpassword">Password</label><form:errors path="customerPassword"/>
  				<form:password path="customerPassword" class="form-control" id="customerusername" placeholder="Set your password "  />
  			</div>
  			
  		<br>
  		
  	<br>
  		
  		<input type="submit" name="Sumbit" Value="Sign-up!" class="btn btn-primary" onclick='showMessage()'>
  		
  		</form:form>
  	</div>
  	</div>
  </div>
  </div>


</body>
</html>