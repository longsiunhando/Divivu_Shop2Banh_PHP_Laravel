<?php
    require_once("databases/dbconnect.php");
    class sanpham_controller{
        public function construct(){

        }
        public function getAll(){
            $db = new dbconnect();
            $sql = "select * from sanpham";
            $result = $db->query($sql);
            return $result;
        }
        public function getOnce($SanPhamID){
            $db = new dbconnect();
            $sql = "select * from sanpham where SanPhamID = $SanPhamID";
            $result = $db->query($sql)->fetch();
            return $result;
        }
        public function getNew(){
            $db = new dbconnect();
            $sql = "select * from sanpham order by NgayNhap desc limit 8";
            $result = $db->query($sql);
            return $result;
        }
        public function getHot(){
            $db = new dbconnect();
            $sql = " 
            select sp.*, sum(ct.SoLuong) as SoLuongBan
            from SanPham sp
            join ChiTietHoaDonBan ct on sp.SanPhamID = ct.SanPhamID
            group by sp.SanPhamID
            order by SoLuongBan desc
            limit 8;
            ";
            $result = $db->query($sql);
            return $result;
        }
        public function SP_GetbySTR($str){
            $db = new dbconnect();
            $sql = "CALL SP_GetBySTR('$str')";
            $result = $db->query($sql);
            return $result;
        }
    }
    
?>