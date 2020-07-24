<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
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
	<script type="text/javascript">
  		function showMessage()
  		{
  			alert(" Volunteer Form Sumbitted");
  		}
  	</script>
  	<div class="Container">
  	<div class="col-xs-4">
  		<div class="row justify-content-center">
  	
  	
  </br>
</br>
<div class="form1">
  		<form:form action="${pageContext.request.contextPath}/createVolunteer" method="POST" commandName="volunteer" enctype="multipart/form-data" >
  	<p><h1 class="text-left">Volunteer Form</h1></p>
  			<div class="form-group">
  				<label for="volunteername"> FullName</label><form:errors path="volunteerName"/>
  				<form:input path="volunteerName" id="volunteername" placeholder="Enter your full name" class="form-control" />
  			</div>
  			<div class="form-group">
            <label for="gender">Gender</label>
            <label class="checkbox-inline"><form:radiobutton path="volunteerGender" id="gender"
                                                             value="Female" />Female</label>
            <label class="checkbox-inline"><form:radiobutton path="volunteerGender" id="gender"
                                                             value="Male" />Male</label>
            <label class="checkbox-inline"><form:radiobutton path="volunteerGender" id="gender"
                                                             value="Transgender" />TransGender</label>
        </div>
  			
  			
  			
  			<div class="from-group">
  				<label for="volunteerpage">Age</label><form:errors path="volunteerAge"/>
  				<form:input path="volunteerAge" class="form-control" id="volunteerage" placeholder="Enter your Comments"  />
  			</div>
  			
  			<div class="form-group">
  				<label for="volunteercontact">Contact</label><form:errors path="volunteerContact"/>
  				<form:input path="volunteerContact" id="volunteercontact" placeholder="Enter your mobile no" class="form-control" />
  			</div>
  			 
  			 <div class="form-group">
  				<label for="volunteeremail">Email</label><form:errors path="volunteerEmail"/>
  				<form:input path="volunteerEmail" id="volunteeremail" placeholder="Enter your mobile no" class="form-control" />
  			</div>
  			<div class="form-group">
            <label for="event">Events</label>
            <label class="checkbox-inline"><form:radiobutton path="volunteerEvent" id="event"
                                                             value="AdoptionDrive" />AdoptionDrive</label>
            <label class="checkbox-inline"><form:radiobutton path="volunteerEvent" id="event"
                                                             value="Rabbies" />Rabbies Drive</label>
            <label class="checkbox-inline"><form:radiobutton path="volunteerEvent" id="event"
                                                             value="FoodDrive" />FoodDrive</label>
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