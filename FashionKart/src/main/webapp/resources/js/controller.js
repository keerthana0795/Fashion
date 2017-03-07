var app=angular.module("app",[])
app.controller("ProductController",function($scope,$http){
	$scope.addToCart=function(productId){
		$http.put('http://localhost:8000/FashionKart/cart/addCartItem/'+productId).success(function(){
			alert("Product successfully added to the cart")
		})
	}
	

})