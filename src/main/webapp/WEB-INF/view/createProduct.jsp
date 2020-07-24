<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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
  			alert("Form Sumbitted");
  		}
  	</script>
  	<div class="Container">
  	<div class="col-xs-4">
  		<div class="row justify-content-center">
  	
  
  </br>
</br>
<div class="form1">
  	<p><h1 class="text-left">Add Product</h1></p>
  		<form:form action="${pageContext.request.contextPath}/admin/productInventory/createProduct" method="POST" commandName="product" enctype="multipart/form-data" >
  	
  	
  			<div class="form-group">
  
  				<label for="productname"> Name</label><form:errors path="productName"/>
  				<form:input path="productName" id="productname" placeholder="Enter the product Name" class="form-control" />
  			</div>
  			
  			<div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="T-shirt" />Food</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Mugs" />Medicines</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="NoteBook" />Woolen cloths</label>
        </div>
  			
  			<div class="from-group">
  				<label for="productdescription">Description</label>
  				<form:textarea path="productDiscription" class="form-control" id="productdescription" placeholder="Enter your Comments" row="5" />
  			</div>
  			<div class="form-group">
  				<label for="productprice">Price</label><form:errors path="productPrice"/>
  				<form:input path="productPrice" id="productprice" placeholder="Enter the price" class="form-control" />
  			</div>
  		 <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
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