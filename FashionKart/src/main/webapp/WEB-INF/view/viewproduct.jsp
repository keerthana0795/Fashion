<%@ include file="Header1.jsp"%>
<html>
<head>
<title>View Product</title>
</head>
<body  ng-app="app"  ng-controller="ProductController">
	<div > 
		<div class="page-header">
			<b>PRODUCT DETAILS</b>
		</div>
		<table class="table">
			<tr>
				<td>Product Name :</td>
				<td>${product.name }</td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td>${product.description }</td>
			</tr>
			<tr>
				<td>Product Price</td>
				<td>${product.price }</td>
			</tr>
			<tr>
				<td>Category details</td>
				<td>${product.category.categoryDetails }</td>
			</tr>
			<%-- <tr>
				<td>Manufacturing Date</td>
				<td>${product.mfg }</td>
			</tr> --%>
			<tr>
			<td>
			</td>
			
			<td><a href="" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
			</tr>
		</table>

	</div>
	<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
</body>
</html>