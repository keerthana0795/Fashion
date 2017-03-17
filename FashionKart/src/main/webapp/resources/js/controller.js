var app=angular.module("app",[])
app.controller("ProductController",function($scope,$http){
$scope.addToCart=function(productId){
	alert('Product successfully added to the cart');
$http.put('http://localhost:8080/FashionKart/cart/addCartItem/'+productId).success(function(){
/*alert('Product successfully added to the cart');*/
})
}

$scope.getCart=function(cartId){
$scope.cartId=cartId;
console.log("cartid is " + cartId)
$http.get('http://localhost:8080/FashionKart/cart/getCart/'+cartId).success(function(data){
$scope.cart=data
})
}

$scope.removeFromCart=function(cartItemId){
console.log('cartitem to be removed is ' + cartItemId);
$http.put('http://localhost:8080/FashionKart/cart/removeCartItem/'+cartItemId).success(function(){
$scope.getCart($scope.cartId)
})
}

$scope.clearCart=function(){
$http.put('http://localhost:8080/FashionKart/cart/removeAllCartItems/'+$scope.cartId).success(function(){
$scope.getCart($scope.cartId)
})
}

$scope.calculateGrandTotal=function(){
var grandTotal=0.0;
for(var i=0;i<$scope.cart.cartItems.length;i++){
grandTotal=grandTotal+$scope.cart.cartItems[i].totalPrice;
}
return grandTotal;
}
})




