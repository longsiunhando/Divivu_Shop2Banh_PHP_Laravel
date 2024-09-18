<?php
    require_once("databases/dbconnect.php");
    class index_controller{
        public function construct(){

        }
        public function getMenu(){
            $db = new dbconnect();
            $sql = "select ID,Text from menu where parent ID is null";
            $result = $db->query($sql);
            return $result;
        }
        public function getHot(){
            $db = new dbconnect();
            $sql = " select ProID, ProName, ProImage from product limit 5";
            $result = $db->query($sql);
            return $result;
        }
    }
?>