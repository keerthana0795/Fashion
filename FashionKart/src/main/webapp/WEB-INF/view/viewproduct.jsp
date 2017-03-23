
<%@ include file="Header1.jsp" %>

<html>
<head>
<title>View Product</title>
</head>
<body ng-app="app" ng-controller="ProductController">
<center>
<div class="page-header">
<b>Product Details</b>
${product.name}<br><br>

<c:url var="images" value="/resources/images/${product.id }.jpg"></c:url>
<img src="${images }" alt="test images" style="width:250px;height:300px"/><br><br>

${product.description }<br><br>
${product.category.categoryDetails}
</div>

<%-- <c:url value="/addCartItem/${product.id }" var="url"></c:url> --%>
<a href="" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a>
</center>

							<!--Script tag for JS  -->
							
	 <script src="<c:url value='/resources/js/controller.js'></c:url>"></script>
	 
</body>
</html>