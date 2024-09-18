<?php
    require_once("databases/dbconnect.php");
    class loaisanpham_controller{
        public function construct(){

        }
        public function getOnce($LoaiSanPhamID){
            $db = new dbconnect();
            $sql = "select * from loaisanpham where LoaiSanPhamID = $LoaiSanPhamID";
            $result = $db->query($sql)->fetch();
            return $result;
        }
        public function getMenu(){
            $db = new dbconnect();
            $sql = "select * from loaisanpham";
            $result = $db->query($sql);
            return $result;
        }
        public function getHot(){
            $db = new dbconnect();
            $sql = " select ProID, ProName, ProImage from product limit 5";
            $result = $db->query($sql);
            return $result;
        }

        public function Cat_GetOneBySTR($str){
            $db = new dbconnect();
            $sql = "CALL Cat_GetBySTR('$str')";
            $result = $db->query($sql)->fetch();
            return $result;
        }
    }
?>