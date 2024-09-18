var app = angular.module("myApp", []);

app.controller("myCtrl", function ($scope, $http, $window) {
    const urlParams = new URLSearchParams(window.location.search);
    const id = urlParams.get("id");
  $http
    .get("https://localhost:7021/api/Home/get-by-id/"+id)
    .then(function (response) {
      $scope.detailproduct = response.data;
      console.log(response.data);
    });

  // $scope.addToCart = function (product) {
  //     var cartItems = $window.localStorage.getItem("cartItems");
  //     if (!cartItems) {
  //       cartItems = [];
  //     } else {
  //       cartItems = JSON.parse(cartItems);
  //     }
  
  //     var index = cartItems.findIndex(
  //       (item) => item.id === product.id
  //     );
  //     if (index === -1) {
  //       product.soLuong = 1;
  //       cartItems.push(product);
  //     } else {
  //       cartItems[index].soLuong += 1;
  //     }
  
  //     alert("Thêm sản phẩm vào giỏ hàng thành công");
  //     $window.localStorage.setItem("cartItems", JSON.stringify(cartItems));
  //   };
    $scope.addToCart = function (product) {
      var cartItems = $window.localStorage.getItem("cartItems");
      if (!cartItems) {
        cartItems = [];
      } else {
        cartItems = JSON.parse(cartItems);
      }
      // Trong controller hoặc component của bạn
      $scope.total = 0; // Khai báo biến total và gán giá trị mặc định là 0
      $scope.cartcount += 1;
      // Sau đó, trong vòng lặp tính tổng
      for (var i = 0; i < cartItems.length; i++) {
          $scope.total += cartItems[i].soLuong * cartItems[i].price;
      }
      console.log($scope.total);
      var index = cartItems.findIndex(
        (item) => item.id === product.id
      );
      if (index === -1) {
        product.soLuong = 1;
        cartItems.push(product);
      } else {
        cartItems[index].soLuong += 1;
      }
  
      alert("Thêm sản phẩm vào giỏ hàng thành công");
      $window.localStorage.setItem("cartItems", JSON.stringify(cartItems));
    };
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
  $scope.LoadDanhMuc = function () {
    $http({
        method: 'GET',
        url: 'https://localhost:7239/api/Category/GetAll',
    }).then(function (response) {
        $scope.listDanhMuc = response.data;
        console.log(response.data);
    });
  };
  $scope.LoadDanhMuc();
});