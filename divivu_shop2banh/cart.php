<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Divivu - Shop 2 bánh</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    <style>
        #productTable {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        }

        #productTable td {
        padding: 8px;
        margin-left: 30px;
        text-align: left;
        border-bottom: 1px solid #ddd;
        }


        #productTable tbody tr:hover {
        background-color: #f9f9f9;
        }

        #productTable tbody td {
        vertical-align: middle;
        }

        #productTable img {
        width: 50px;
        height: auto;
        }
        .form-group {
        margin-bottom: 20px;
        }

        label {
        display: block;
        font-weight: bold;
        }

        input[type="text"],
        input[type="tel"],
        input[type="email"] {
        width: 50%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        }

        button[type="submit"] {
        padding: 8px 16px;
        background-color: #4caf50;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        }

        button[type="submit"]:hover {
        background-color: #45a049;
        }
    </style>
</head>

<body ng-app="myApp" ng-controller="myCtrl">
    <!-- Header Start -->
    <?php
    include("header.php")
    ?>
    <!-- Header End -->


    <!-- Breadcrumb Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="index.php">Trang chủ</a>
                    <a class="breadcrumb-item text-dark" href="shop.php">Gian hàng</a>
                    <span class="breadcrumb-item active">Thông tin sản phẩm</span>
                </nav>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->


    <!-- Cart Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table id="productTable" class="table table-light table-borderless table-hover text-center mb-5">
                    <thead class="thead-dark">
                        <tr>
                            <th>Mã sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Giá 1 sản phẩm</th>
                            <th>Tổng giá trị hàng hóa</th>
                            <!-- <th>Remove</th> -->
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        <!-- <tr>
                            <td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Product Name</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus" >
                                        <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary border-0 text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button></td>
                        </tr> -->
                    </tbody>
                </table>

                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Địa chỉ thanh toán</span></h5>
                <div class="bg-light p-30 mb-5">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Tên người nhận hàng</label>
                            <input ng-model="name" class="form-control" type="text" placeholder="Name">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Số điện thoại</label>
                            <input ng-model="phone" class="form-control" type="text" placeholder="+84 999 999 999">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>E-mail</label>
                            <input ng-model="email" class="form-control" type="email" placeholder="example@email.com">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Địa chỉ</label>
                            <input ng-model="address" class="form-control" type="text" placeholder="Address">
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-4">
                <form class="mb-30" action="">
                    <div class="input-group">
                        <input type="text" class="form-control border-0 p-4" placeholder="Mã giảm giá">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Áp dụng</button>
                        </div>
                    </div>
                </form>
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Chi tiết thanh toán</span></h5>
                <div class="bg-light p-30 mb-5">
                    <div class="border-bottom pb-2">
                        <div class="d-flex justify-content-between mb-3">
                            <h6>Tiền thu hộ</h6>
                            <h6>{{total | number}} ₫</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Vận chuyển</h6>
                            <h6 class="font-weight-medium">Free</h6>
                        </div>
                    </div>
                    <div class="pt-2">
                        <div class="d-flex justify-content-between mt-2">
                            <h5>Tổng thanh toán</h5>
                            <h5>{{total | number}} ₫</h5>
                        </div>
                        <button ng-click="createOrder()" class="btn btn-block btn-primary font-weight-bold my-3 py-3">Xác nhận đơn hàng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->


    <!-- Footer Start -->
    <?php
    include("footer.php");
    ?>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>

    <script src="js/angular.min.js"></script>
    <script src="js/cart.js"></script>

</body>
<script>
    // Lấy dữ liệu từ local storage
    var cartItems = JSON.parse(localStorage.getItem("cartItems"));

    // Tìm phần tử <tbody> trong bảng có ID là "productTable"
    var tableBody = document.getElementById("productTable").getElementsByTagName("tbody")[0];

    // Duyệt qua từng sản phẩm trong giỏ hàng và tạo hàng trong bảng
    cartItems.forEach(function(item) {
    // Tạo một hàng mới
    var row = tableBody.insertRow();

    // Tạo các ô cột và gán giá trị
    var maSanPhamCell = row.insertCell();
    maSanPhamCell.textContent = item.id;

    var tenSanPhamCell = row.insertCell();
    tenSanPhamCell.textContent = item.proName;
    var soluongcell = row.insertCell();
    soluongcell.textContent = item.soLuong;
    var giaTienCell = row.insertCell();
    giaTienCell.textContent = item.price.toLocaleString("vi-VN", { style: "currency", currency: "VND" });
    var TongTienCell = row.insertCell();
    TongTienCell.textContent = (item.price * item.soLuong).toLocaleString("vi-VN", { style: "currency", currency: "VND" });

    // Tạo các ô cột khác và gán giá trị tương ứng

    // ...
    });

  </script>
</html>