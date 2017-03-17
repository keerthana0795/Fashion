<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<html>
<head>
										<!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
	                                  <!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.2/angular.min.js"></script> 
</head>
<body>
					
										<!-- Header command -->
										
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <div style="color: teal; font-size: 20px;font-family:AR BLANCA">
    <div class="navbar-header">
          <a class="navbar-brand" href="index">FashionKart</a>
        </div>
       <ul class="nav navbar-nav">
       <c:if test="${pageContext.request.userPrincipal.name !=null }">
        <li class="active">
        <li><a href="<c:url value="/Aboutus"></c:url>" style="color:white"> ABOUT US</a></li>
        <security:authorize access="hasRole('ROLE_ADMIN')">
        <li class="active">
        <%-- <li><a href="${url }" style="color:white">ADD NEW PRODUCT</a></li> --%>
   <li><a href="<c:url value="/admin/product/productform"></c:url>" style="color:white">PRODUCTS</a></li>
		</security:authorize>
		<li><a href="<c:url value="/all/product/getAllProducts"></c:url>" style="color:white">BROWSE ALL PRODUCTS</a></li>
 <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">CASUSAL WEAR<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li><a href="#">SMARTY CASUSAL</a></li>
          <li><a href="#">ACTIVE CASUSAL</a></li>
          <li><a href="#">PARTY CASUSAL</a></li>
          </ul>
          </li>
          <!-- <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">FORMAL WEAR<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">KURTIS & TOPS</a></li>
          <li><a href="#">PANTS</a></li>
          <li><a href="#">LEGGINGS</a></li>
        </ul></li> -->
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">WEDDING WEAR<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">SAREES</a></li>
          <li><a href="#">LEHENDA</a></li>
          <li><a href="#">GAGRA CHOLI</a></li>
        </ul></li> 
        <security:authorize access="hasRole('ROLE_USER')">
        <li class="active">
       <li><a href="<c:url value="/cart/getCartId"></c:url>" style="color:white"><span class="glyphicon glyphicon-cart"></span> CART</a></li>
             </security:authorize>
        </c:if>
        </ul>
        
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${pageContext.request.userPrincipal.name ==null }">
      <li> <a href="<c:url value="/all/registrationForm"></c:url>"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li>
      <li><a href="Signin"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name !=null }">
      <li><a href="">welcome ${pageContext.request.userPrincipal.name }</a></li>
      <li><a href="<c:url value="/j_spring_security_logout"></c:url>"><span class="glyphicon glyphicon-user"></span> SIGN OUT</a></li>
      </c:if>
      
    </ul>
    </div>
    </div>
</nav>
									<!-- Placed at the end of the document so that page load faster -->

				                <%-- <script src="<c:url value='/resources/js/bootstrap.min.js'/>" /></script> --%>
</body>
</html>
    
    
      