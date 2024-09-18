<?php
    require("../controllers/catcontroller.php");
    $db = new catcontroller();
    $getCatID = $_GET["catid"]; 
    if (isset($getCatID)){
        $title = "Sửa danh mục";
        $resuilt = $db->getOnce($getCatID);
        if(isset($_POST["btn"])){
            $CatID=$getCatID;
            $CatName=$_POST["CatName"];
            $MetaTitle=$_POST["MetaTitle"]?$_POST["MetaTitle"]:NULL;
            $Stuffs=$_POST["Stuffs"]?$_POST["Stuffs"]:NULL;
            $RooID=$_POST["RooID"];
            $DisplayOrder=$_POST["DisplayOrder"];
            $Status=$_POST["Status"];
            $ShowMenu=$_POST["ShowMenu"];
            $MetaDescriptions=$_POST["MetaDescriptions"]?$_POST["MetaDescriptions"]:NULL;
            $db->edit($CatID,$CatName,$MetaTitle,$Stuffs,$RooID,$DisplayOrder,$MetaDescriptions,$Status,$ShowMenu);
        }
    }
?>

<script src="https://cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>

<div class="card-body">
    <form action="home.php?page=category&action=edit&catid=<?=$getCatID?>" method="post">
        <div class="table-responsive">
            <table class="table" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th><?=$title?></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>CatID</td>
                        <td><input type="text" class="form-control" name="CatID" id="CatID" value="<?=$resuilt["CatID"]??"";?>"  disabled/></td>
                    </tr>
                    <tr>
                        <td>CatName</td>
                        <td><input type="text" class="form-control" name="CatName" id="CatName" value="<?=$resuilt["CatName"]??"";?>"/></td>
                    </tr>
                    <tr>
                        <td>MetaTitle</td>
                        <td><input type="text" class="form-control" name="MetaTitle" id="MetaTitle" value="<?=$resuilt["MetaTitle"]??"";?>"/></td>
                    </tr>
                    <tr>
                        <td>Stuffs</td>
                        <td><input type="text" class="form-control" name="Stuffs" id="Stuffs" value="<?=$resuilt["Stuffs"]??"";?>"/></td>
                    </tr>
                    <tr>
                        <td>RooID</td>
                        <td><input type="text" class="form-control" name="RooID" id="RooID" value="<?=$resuilt["RooID"]??"";?>"/></td>
                    </tr>
                    <tr>
                        <td>DisplayOrder</td>
                        <td><input type="text" class="form-control" name="DisplayOrder" id="DisplayOrder" value="<?=$resuilt["DisplayOrder"]??"";?>"/></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><input type="text" class="form-control" name="Status" id="Status" value="<?=$resuilt["Status"]??"";?>"/></td>
                    </tr>
                    <tr>
                        <td>ShowMenu</td>
                        <td><input type="text" class="form-control" name="ShowMenu" id="ShowMenu" value="<?=$resuilt["ShowMenu"]??"";?>"/></td>
                    </tr>
                    <tr>
                        <td>MetaDescriptions</td>
                        <td>
                            <textarea class="form-control" name="MetaDescriptions" id="MetaDescriptions" cols="30" rows="10">
                                <?=$resuilt["MetaDescriptions"]??"";?>
                            </textarea>
                            <script>
                                CKEDITOR.replace( 'MetaDescriptions' );
                            </script>
                        </td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="btn" class="btn btn-primary">Save</button></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
    
</div>