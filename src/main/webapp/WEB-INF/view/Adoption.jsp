<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adoption Form</title>
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
     <a class="navbar-brand brand" href="<c:url value="/" />"><strong>&nbsp DogOfStreet</strong></a>
    
  
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a><h4>Welcome: ${pageContext.request.userPrincipal.name}</h4></a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />"><<h4>Logout</h4></a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />">Cart</a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />"><h3>Admin</h3></a></li>
                            </c:if>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a href="<c:url value="/login/" />"><h4>Login</h4></a></li>
                        <li><a href="<c:url value="/register" />"><h4>Register</h4></a></li>
                        </c:if>
                    </ul>
  </div>
</nav>

</head>
<body>
	<script type="text/javascript">
  		function showMessage()
  		{
  			alert(" Adoption Form Sumbitted");
  		}
  	</script>
  
  	<div class="Container">
  	<div class="col-xs-4">
  		<div class="row justify-content-center">
  	
  
  </br>
</br>
<div class="form1">
  			<p><h1 align="center">Fill in the Adoption Application</h1></p>
  		<form:form action="${pageContext.request.contextPath}/Adoption" method="POST" commandName="adoption" enctype="multipart/form-data" >
  			<div class="form-group">
  				<label for="adoptionname"> Full Name</label><form:errors path="adoptionName"/>
  				<form:input path="adoptionName" id="adoptionname" placeholder="Enter your full name" class="form-control" />
  			</div>
  			
  			
  			
  			<div class="from-group">
  				<label for="adoptionpage">Age</label><form:errors path="adoptionAge"/>
  				<form:input path="adoptionAge" class="form-control" id="adoptionrage" placeholder="Enter your Comments"  />
  			</div>
  			
  			<div class="form-group">
  				<label for="adoptioncontact">Contact</label><form:errors path="adoptionContact"/>
  				<form:input path="adoptionContact" id="adoptioncontact" placeholder="Enter your mobile no" class="form-control" />
  			</div>
  			 
  			 <div class="form-group">
  				<label for="adoptioneremail">Email</label><form:errors path="adoptionEmail"/>
  				<form:input path="adoptionEmail" id="adoptionemail" placeholder="Enter your Email" class="form-control" />
  			</div>
  			<div class="form-group">
            <label for="idType">Id Type</label>
            <label class="checkbox-inline"><form:radiobutton path="idType" id="idType"
                                                             value="Adhaar Card" />Adhaar Card</label>
            <label class="checkbox-inline"><form:radiobutton path="idType" id="idType"
                                                             value="Voter Id Card" />Voter ID</label>
           </div>
  		<div class="form-group">
            <label class="control-label" for="id">Upload Document</label>
            <form:input id="id" path="Id" type="file" class="form:input-large" />
        </div>
 
  		<br>
  		
  	<br>
  		
  		<input type="submit" name="Sumbit" Value="Sumbit" class="btn btn-primary" onclick='showMessage()'>
  		
  		</form:form>
  		</div>
  	</div>
  	</div>
  </div>


</body>
</html>