<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Divivu-Shop2Banh</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->

        <?php include("sidebar.php"); ?>
        
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                
                <?php include("navbar.php"); ?>

                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <?php
                    if (isset($_GET["page"])){
                        $page = $_GET["page"];
                        switch ($page) {
                            case 'carosel':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("carosel/create.php");
                                            break;
                                        case 'delete':
                                            include("carosel/delete.php");
                                            break;
                                    }
                                }
                                else{
                                    include("carosel/index.php");
                                }
                                break;
                            case 'loaisanpham':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("loaisanpham/create.php");
                                            break;
                                        case 'edit':
                                            include("loaisanpham/edit.php");
                                            break;
                                        case 'delete':
                                            include("loaisanpham/delete.php");
                                            break;
                                        case 'detail':
                                            include("loaisanpham/detail.php");
                                            break;
                                    }
                                }
                                else{
                                    include("loaisanpham/index.php");
                                }
                                break;
                            case 'sanpham':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("sanpham/create.php");
                                            break;
                                        case 'edit':
                                            include("sanpham/edit.php");
                                            break;
                                        case 'delete':
                                            include("sanpham/delete.php");
                                            break;
                                        case 'detail':
                                            include("sanpham/detail.php");
                                            break;
                                    }
                                }
                                else{
                                    include("sanpham/index.php");
                                }
                                break;
                            case 'nhanvien':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("nhanvien/create.php");
                                            break;
                                        case 'edit':
                                            include("nhanvien/edit.php");
                                            break;
                                        case 'delete':
                                            include("nhanvien/delete.php");
                                            break;
                                        case 'detail':
                                            include("nhanvien/detail.php");
                                            break;
                                    }
                                }
                                else{
                                    include("nhanvien/index.php");
                                }
                                break;
                            case 'luong':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("luong/create.php");
                                            break;
                                        case 'edit':
                                            include("luong/edit.php");
                                            break;
                                        case 'delete':
                                            include("luong/delete.php");
                                            break;
                                        case 'detail':
                                            include("luong/detail.php");
                                            break;
                                    }
                                }
                                else{
                                    include("luong/index.php");
                                }
                                break;
                            case 'kh':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("kh/create.php");
                                            break;
                                        case 'edit':
                                            include("kh/edit.php");
                                            break;
                                        case 'delete':
                                            include("kh/delete.php");
                                            break;
                                        case 'detail':
                                            include("kh/detail.php");
                                            break;
                                    }
                                }
                                else{
                                    include("kh/index.php");
                                }
                                break;
                            case 'hdb':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("hdb/create.php");
                                            break;
                                        case 'edit':
                                            include("hdb/edit.php");
                                            break;
                                        case 'delete':
                                            include("hdb/delete.php");
                                            break;
                                        case 'detail':
                                            include("hdb/detail.php");
                                            break;
                                    }
                                }
                                else{
                                    include("hdb/index.php");
                                }
                                break;
                            case 'ncc':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("ncc/create.php");
                                            break;
                                        case 'edit':
                                            include("ncc/edit.php");
                                            break;
                                        case 'delete':
                                            include("ncc/delete.php");
                                            break;
                                        case 'detail':
                                            include("ncc/detail.php");
                                            break;
                                    }
                                }
                                else{
                                    include("ncc/index.php");
                                }
                                break;
                            case 'hdn':
                                if (isset($_GET["action"])){
                                    $action = $_GET["action"];
                                    switch ($action) {
                                        case 'create':
                                            include("hdn/create.php");
                                            break;
                                        case 'edit':
                                            include("hdn/edit.php");
                                            break;
                                        case 'delete':
                                            include("hdn/delete.php");
                                            break;
                                        case 'detail':
                                            include("hdn/detail.php");
                                            break;
                                    }
                                }
                                else{
                                    include("hdn/index.php");
                                }
                                break;
                            
                            
                        }
                    }else{
                        include("dashboard.php");
                    }
                ?>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php include("footer.php"); ?>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../js/demo/chart-area-demo.js"></script>
    <script src="../js/demo/chart-pie-demo.js"></script>

    <!-- Page level plugins -->
    <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../js/demo/datatables-demo.js"></script>

</body>

</html>