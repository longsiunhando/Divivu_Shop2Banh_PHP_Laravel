<?php
    require("../controllers/catcontroller.php");
    $db = new catcontroller();
    if (isset($_GET["catid"])){
        $resuilt = $db->getOnce($_GET["catid"]);
    }
?>

<div class="card-body">
    <div class="table-responsive">
        <table class="table table-bordered" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>CatID</th>
                    <th>CatName</th>
                    <th>MetaTitle</th>
                    <th>Stuffs</th>
                    <th>RooID</th>
                    <th>DisplayOrder</th>
                    <th>created_at</th>
                    <th>CreateBy</th>
                    <th>ModifiedDate</th>
                    <th>MetaDescriptions</th>
                    <th>Status</th>
                    <th>ShowMenu</th>
                    <th>updated_at</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><?=$resuilt["CatID"]?></td>
                    <td><?=$resuilt["CatName"]?></td>
                    <td><?=$resuilt["MetaTitle"]?></td>
                    <td><?=$resuilt["Stuffs"]?></td>
                    <td><?=$resuilt["RooID"]?></td>
                    <td><?=$resuilt["DisplayOrder"]?></td>
                    <td><?=$resuilt["created_at"]?></td>
                    <td><?=$resuilt["CreateBy"]?></td>
                    <td><?=$resuilt["ModifiedDate"]?></td>
                    <td><?=$resuilt["MetaDescriptions"]?></td>
                    <td><?=$resuilt["Status"]?></td>
                    <td><?=$resuilt["ShowMenu"]?></td>
                    <td><?=$resuilt["updated_at"]?></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>