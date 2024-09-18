<?php
    require_once("controllers/loaisanpham_controller.php");
    $db = new loaisanpham_controller();
    $str = "Xe";
    $sp = $db->Cat_GetOneBySTR($str);
    if ($sp) {
        echo $sp["LoaiSanPhamID"] . "<br>";
    } else {
        echo "Không tìm thấy sản phẩm nào phù hợp.";
    }
?>
