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

</head>
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
  	
  	<p><h1 class="text-left">Add Product</h1></p>
  </br>
</br>
  		<form:form action="${pageContext.request.contextPath}/admin/productInventory/createProduct" method="POST" commandName="product">
  			<div class="form-group">
  				<label for="productname"> Name</label>
  				<form:input path="productName" id="productname" placeholder="Enter the product Name" class="form-control" />
  			</div>
  			
  			<div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="T-shirt" />T-shirt</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Mugs" />Mugs</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="NoteBook" />NoteBook</label>
        </div>
  			
  			<div class="from-group">
  				<label for="productdescription">Description</label>
  				<form:textarea path="productDiscription" class="form-control" id="productdescription" placeholder="Enter your Comments" row="5" />
  			</div>
  			<div class="form-group">
  				<label for="productprice">Price</label>
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


</body>
</html>