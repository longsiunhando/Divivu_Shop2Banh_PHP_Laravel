var app = angular.module("myApp", []);

app.controller("myCtrl", function ($scope, $http, $window) {
  // Trong controller hoặc component của bạn
  $scope.total = 0; // Khai báo biến total và gán giá trị mặc định là 0
  $scope.cartcount = 0;

  // Hàm tính tổng và gán giá trị cho total
  function calculateTotal() {
    var cartItems = $window.localStorage.getItem("cartItems");
    if (!cartItems) {
      cartItems = [];
    } else {
      cartItems = JSON.parse(cartItems);
    }
    
    $scope.total = 0; // Đặt lại giá trị total về 0
    $scope.cartcount = 0;
    
    for (var i = 0; i < cartItems.length; i++) {
      $scope.total += cartItems[i].soLuong * cartItems[i].price;
      $scope.cartcount += 1;
    }
  }
  // Gọi hàm tính tổng trong hàm khởi tạo của controller hoặc component
  calculateTotal();
  $http
    .get("https://localhost:7021/api/Home/get-latest-product/8")
    .then(function (response) {
      $scope.lastestproducts = response.data;
      console.log(response.data);
    });


    $http
    .get("https://localhost:7239/api/Product/get-all")
    .then(function (response) {
      $scope.listProducts = response.data;
      console.log(response.data);
    });



    
  $http
    .get("https://localhost:7021/api/Home/get-best-ordering/8")
    .then(function (response) {
      $scope.bestorderproducts = response.data;
      console.log(response.data);
    });
    $scope.LoadDanhMuc = function () {
      $http({
          method: 'GET',
          url: 'https://localhost:7239/api/Category/GetAll',
      }).then(function (response) {
          $scope.listDanhMuc = response.data;
          console.log(response.data);
      });
    };
    $scope.searchProduct = function () {
    // Gọi API tìm kiếm sản phẩm với từ khoá search
    $http
      .get(
        "https://localhost:7239/api/Product/search/" + $scope.search
      )
      .then(function (response) {
        $scope.searchResults = response.data;
        console.log(response.data);
      });
    };
    $scope.LoadDanhMuc();
    
});