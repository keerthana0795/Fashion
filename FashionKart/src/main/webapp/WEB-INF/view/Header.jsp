
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
										<!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
		    
</head>
<body>
					
										<!-- Header command -->
										
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index">FashionKart</a>
        </div>
       <ul class="nav navbar-nav">
        <li class="active"><a href="Aboutus">ABOUTUS</a></li> 
         <li class="active"><a href="ProductForm">PRODUCTFORM</a></li>
      <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">CASUSAL WEAR<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li><a href="#">SMARTY CASUSAL</a></li>
          <li><a href="#">ACTIVE CASUSAL</a></li>
          <li><a href="#">PARTY CASUSAL</a></li>
          </ul>
          </li>
          <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">FORMAL WEAR<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">KURTIS & TOPS</a></li>
          <li><a href="#">PANTS</a></li>
          <li><a href="#">LEGGINGS</a></li>
        </ul></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">WEDDING WEAR<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">SAREES</a></li>
          <li><a href="#">LEHENDA</a></li>
          <li><a href="#">GAGRA CHOLI</a></li>
        </ul></li></ul>
        
        <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="Logout">LOGOUT</a></li> </ul>
        </div>
</nav>
									<!-- Placed at the end of the document so that page load faster -->

				                <script src="<c:url value='/resources/js/bootstrap.min.js'/>" /></script>
</body>
</html>
    
    
      