<?php
    require("../controllers/catcontroller.php");
    $db = new catcontroller();
    $title = "Thêm danh mục";
    if(isset($_POST["btn"])){
        $CatName=$_POST["CatName"];
        $MetaTitle=$_POST["MetaTitle"];
        $Stuffs=$_POST["Stuffs"];
        $RooID=$_POST["RooID"];
        $DisplayOrder=$_POST["DisplayOrder"];
        $CreateBy=$_POST["CreateBy"];
        $Status=$_POST["Status"];
        $ShowMenu=$_POST["ShowMenu"];
        $MetaDescriptions=$_POST["MetaDescriptions"];
        $db->create($CatName,$MetaTitle,$Stuffs,$RooID,$DisplayOrder,$CreateBy,$MetaDescriptions,$Status,$ShowMenu);
    }
?>

<script src="https://cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>

<div class="card-body">
    <form action="home.php?page=category&action=create" method="post">
        <div class="table-responsive">
            <table class="table" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th><?=$title?></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>CatName</td>
                        <td><input type="text" class="form-control" name="CatName" id="CatName"/></td>
                    </tr>
                    <tr>
                        <td>MetaTitle</td>
                        <td><input type="text" class="form-control" name="MetaTitle" id="MetaTitle"/></td>
                    </tr>
                    <tr>
                        <td>Stuffs</td>
                        <td><input type="text" class="form-control" name="Stuffs" id="Stuffs"/></td>
                    </tr>
                    <tr>
                        <td>RooID</td>
                        <td><input type="text" class="form-control" name="RooID" id="RooID"/></td>
                    </tr>
                    <tr>
                        <td>DisplayOrder</td>
                        <td><input type="text" class="form-control" name="DisplayOrder" id="DisplayOrder"/></td>
                    </tr>
                    <tr>
                        <td>CreateBy</td>
                        <td><input type="text" class="form-control" name="CreateBy" id="CreateBy"/></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><input type="text" class="form-control" name="Status" id="Status"/></td>
                    </tr>
                    <tr>
                        <td>ShowMenu</td>
                        <td><input type="text" class="form-control" name="ShowMenu" id="ShowMenu"/></td>
                    </tr>
                    <tr>
                        <td>MetaDescriptions</td>
                        <td>
                            <textarea class="form-control" name="MetaDescriptions" id="MetaDescriptions" cols="30" rows="10">
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