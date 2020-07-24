/**
 * 
 */
var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http){

    $scope.refreshCart = function () {
        $http.get('/dogofstreet/rest/cart/'+$scope.cartId).success(function (data) {
           $scope.cart=data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/dogofstreet/rest/cart/'+$scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
        $http.put('/dogofstreet/rest/cart/add/'+productId).success(function () {
            $scope.refreshCart($http.get('/eMusicStore/rest/cart/cartId'));
            alert("Product successfully added to the cart!")
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/dogofstreet/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart();
        });
    };

$scope.calGrandTotal = function () {
    var grandTotal=0;

    for (var i=0; i<$scope.cart.cartItems.length; i++) {
        grandTotal+=$scope.cart.cartItems[i].totalPrice;
    }

    return grandTotal;
};
});