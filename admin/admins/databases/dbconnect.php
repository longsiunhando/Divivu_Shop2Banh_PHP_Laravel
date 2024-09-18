<?php
    class dbconnect{
        private $host="localhost";
        private $user="root";
        private $pass="23082003";
        private $dbname="divivu";
        public function construct(){

        }
        public function query($sql){
            $db=new PDO("mysql:host=$this->host;dbname=$this->dbname",$this->user,$this->pass);
            $result=$db->query($sql);
            $db=null;
            return $result;
        }
        public function getOnce($sql){
            $db=new PDO("mysql:host=$this->host;dbname=$this->dbname",$this->user,$this->pass);
            $result=$db->query($sql)->fetch();
            $db=null;
            return $result;
        }
        public function exec($sql){
            $db=new PDO("mysql:host=$this->host;dbname=$this->dbname",$this->user,$this->pass);
            $result=$db->exec($sql);
            $db=null;
            return $result;
        }
    }
?>