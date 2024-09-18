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

  console.log($scope.total);

  $scope.createOrder = function () {
      // Tạo đối tượng khách hàng từ dữ liệu trong form
      var customer = {
        id: 0,
        name: $scope.name,
        phoneNumber: $scope.phone,
        email: $scope.email,
        address: $scope.address,
        orderStatus: 1
      };
      // Lấy thông tin giỏ hàng từ local storage
      var cartItems = JSON.parse(localStorage.getItem("cartItems"));
  
      // Tạo một mảng chứa các sản phẩm trong giỏ hàng
      var orderDetails = [];
  
      for (var i = 0; i < cartItems.length; i++) {
        var orderDetail = {
          orderID: 0,
          proID: cartItems[i].id,
          quantity: cartItems[i].soLuong,
          price: cartItems[i].price,
        };
        orderDetails.push(orderDetail);
      }
      // Gửi dữ liệu đơn hàng đến API
      var data = {
          object_json_customer: customer,
          list_json_orderdetail: orderDetails,
      };
  
      $http
        .post("https://localhost:7021/api/Order/create-order", data)
        .then(function (response) {
          // Xử lý kết quả trả về nếu cần
          console.log(response);
          localStorage.removeItem("cartItems");
          alert("Thêm đơn hàng thành công");
          window.location.href = 'index.html';
        })
        .catch(function (error) {
          // Xử lý lỗi nếu có
          console.log(error);
          alert("Lỗi");
        });
    };
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