
<%@ include file="Header1.jsp" %>
                             
<html>
<head>
<title>Cart</title>
		    
<!-- <script>
 var v=${ss}; 
 angular.module('app',[]).controller('cartctlr', function($scope) 
 		{ 
	console.log(v);
	$scope.cc=v; 
		}); 
</script> -->

</head>
<body>
 <div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})"> 
 <!-- <a href="" class="btn btn-danger pull-left" ng-click="clearCart()"><span class="glyphicon glphyicon-remove-sign"></span> -->

<a href="" class="btn btn-success pull-left" ng-click="clearCart()"><span class="glyphicon glyphicon-shopping-cart"></span>ClearCart</a>

<a href="<c:url value="/order/${cartId}"></c:url>" class="btn btn-success pull-right">
<span class="glyphicon glyphicon-shopping-cart"></span>Checkout</a>
<table class="table table-striped">
<thead>
<tr><th>NAME</th><th>QUANTITY</th><th>TOTAL PRICE</th><th>REMOVE</th>
</tr>
</thead>
<div ng-app="app" ng-controller="ProductController">


<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="btn btn-danger pull-left" ng-click="removeFromCart(cartItem.id)"><span class="glyphicon glyphicon-remove"></span>Remove
</a></td> 
</tr>

</table>
Total Price:{{calculateGrandTotal()}}
<!-- </div></div> -->
</div>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

</body>
</html>