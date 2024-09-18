<?php
    require_once("../databases/dbconnect.php");
    class catcontroller{
        public function construct(){

        }
        public function getAll(){
            $db=new dbconnect();
            $sql="select * from category";
            $result=$db->query($sql);
            return $result;
        }
        public function getOnce($CatID){
            $db=new dbconnect();
            $sql="select * from category where CatID = $CatID";
            $result=$db->getOnce($sql);
            return $result;
        }
        public function create(
            $CatName,$MetaTitle,$Stuffs,$RooID,$DisplayOrder,
            $CreateBy,$MetaDescriptions,$Status,$ShowMenu
        ){
            $db=new dbconnect();
            $date = date("Y-m-d H:i:s");
            $sql="INSERT INTO category (CatName,MetaTitle,Stuffs,RooID,DisplayOrder,created_at,
            CreateBy,ModifiedDate,MetaDescriptions,Status,ShowMenu,updated_at) 
            VALUES ('$CatName','$MetaTitle','$Stuffs',$RooID,$DisplayOrder,'$date',
            '$CreateBy','$date','$MetaDescriptions',$Status,$ShowMenu,'$date')";
            $result=$db->exec($sql);
            return $result;
        }
        public function edit(
            $CatID,$CatName,$MetaTitle,$Stuffs,$RooID,$DisplayOrder,
            $MetaDescriptions,$Status,$ShowMenu
        ){
            $db=new dbconnect();
            $date = date("Y-m-d H:i:s");
            $sql="update category set CatName='$CatName',MetaTitle='$MetaTitle',Stuffs='$Stuffs',RooID=$RooID,DisplayOrder=$DisplayOrder,
            ModifiedDate='$date',MetaDescriptions='$MetaDescriptions',Status=$Status,ShowMenu=$ShowMenu
            where CatID = $CatID";
            $result=$db->exec($sql);
            return $result;
        }
        public function delete($CatID){
            $db=new dbconnect();
            $sql="delete from category where CatID = $CatID";
            $result=$db->exec($sql);
            return $result;
        }
    }
?>