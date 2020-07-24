<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<title>DogsofStreet</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>
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
  
 <div class ="jumbotron">
 
 <div class=" container" >
 <div class ="text" align="center">
 <h1 >Volunteer.Donate.Adopt </h1>
 <br>
 <br>
 <p>You can make a difference in just 5 minutes, donate towards DogsOfStreet Rescue and change the life of an Indian street dog.
Thank you for your interest in supporting DogsOfStreet! Your commitment towards our cause will help us to carry out our mission of taking care of Indian street dogs.</p>
  </div>
   </div>
   </div>
   </body>
 <div class="function">

   <div class=" container">
   <h1 align="center">Make a Difference</h1>
   <br>
   <br>
  
   <div class="row">
   <div class="col-lg-4 col-md-3 col-3">
   <img class="img-fluid img-thumbnail" width="500px" height="350px" src="<c:url value="/resources/Images/adopt.jpg"/>">
   <div class="caption">
     <a href="<c:url value="/Adoption/" />"><h1>Adoption</h1></a>
    <p>Adopt and Save a Life .Bring a new Sunshine into your life !!</p>
    </div>
    </div>
   
   
<div class="col-lg-4 col-md-3 col-3">


   <img class="img-fluid img-thumbnail" width="500px" height="250px" src="<c:url value="/resources/Images/volunteer.jpeg"/>">
    <div class="caption">
    <a href="<c:url value="/createVolunteer/" />"><h1>Volunteer</h1></a>
    <p>Volunteer with us in a our various dogs feeding drive and help the dogs to have a caring and loving life that  they deserve</p>
    </div>
    </div>

<div class="col-lg-4 col-md-3 col-3">

   <img class="img-fluid img-thumbnail" width="400px" height="350px" src="<c:url value="/resources/Images/donate.jpg"/>">
    <div class="caption">
    <h1>Donation</h1>
    <p>Help us feed the dog and provide them with nutrious food!</p>
    </div>
   </div>
   
    </div>
   </div>
   </div>
  
  <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">DogsOfStreet <i>The aims and purposes of DogsofStreet Rescue include finding homes for Indian dogs and pups, placing abandoned pets into loving homes, mass sterilizations of stray animals in different zones across New Delhi., better medical care and to raise awareness to our cause.</p>
          </div>

        
          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
              <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
              <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
              <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
              <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by 
         <a href="#">DogsOfStreet</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
  
  </html>