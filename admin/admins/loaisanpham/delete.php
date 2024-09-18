<?php 
    require("../controllers/catcontroller.php");
    $db = new catcontroller();
    if (isset($_GET["catid"])){
        $db->delete($_GET["catid"]);
    }
?>