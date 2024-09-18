<?php
    require_once("databases/dbconnect.php");
    class loaisanpham_controller{
        public function construct(){

        }
        public function getAll(){
            $db=new dbconnect();
            $sql="select * from loaisanpham";
            $result=$db->query($sql);
            return $result;
        }
        public function getOnce($LoaiSanPhamID){
            $db=new dbconnect();
            $sql="select * from loaisanpham where LoaiSanPhamID = $LoaiSanPhamID";
            $result=$db->getOnce($sql);
            return $result;
        }
        public function create($LoaiSanPhamID,$TenLoaiSanPham){
            $db=new dbconnect();
            // $date = date("Y-m-d H:i:s");
            // $sql="INSERT INTO loaisanpham (CatName,MetaTitle,Stuffs,RooID,DisplayOrder,created_at,
            // CreateBy,ModifiedDate,MetaDescriptions,Status,ShowMenu,updated_at) 
            // VALUES ('$CatName','$MetaTitle','$Stuffs',$RooID,$DisplayOrder,'$date',
            // '$CreateBy','$date','$MetaDescriptions',$Status,$ShowMenu,'$date')";
            // $result=$db->exec($sql);
            $sql="
            insert into loaisanpham(LoaiSanPhamID,TenLoaiSanPham)
            values ('$LoaiSanPhamID','$TenLoaiSanPham')
            ";
            $result=$db->exec($sql);
            return $result;
        }
        public function edit($LoaiSanPhamID,$TenLoaiSanPham){
            $db=new dbconnect();
            // $date = date("Y-m-d H:i:s");
            // $sql="update loaisanpham set CatName='$CatName',MetaTitle='$MetaTitle',Stuffs='$Stuffs',RooID=$RooID,DisplayOrder=$DisplayOrder,
            // ModifiedDate='$date',MetaDescriptions='$MetaDescriptions',Status=$Status,ShowMenu=$ShowMenu
            // where CatID = $CatID";
            $sql="update loaisanpham set TenLoaiSanPham='$TenLoaiSanPham' where LoaiSanPhamID=$LoaiSanPhamID";
            $result=$db->exec($sql);
            return $result;
        }
        public function delete($LoaiSanPhamID){
            $db=new dbconnect();
            $sql="delete from loaisanpham where loaisanphamID = $loaisanphamID";
            $result=$db->exec($sql);
            return $result;
        }
    }
?>