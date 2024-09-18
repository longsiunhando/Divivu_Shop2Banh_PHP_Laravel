<?php
    require("../controllers/loaisanpham_controller.php");
    $db = new loaisanpham_controller();
    $result = $db->getAll();
?>

<div class="card-body">
<div class="table-responsive">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Trạng thái</th>
                <th>Chi tiết</th>
                <th>Sửa</th>
                <th>Xoá</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Trạng thái</th>
                <th>Chi tiết</th>
                <th>Sửa</th>
                <th>Xoá</th>
            </tr>
        </tfoot>
        <tbody>
            <?php
                foreach ($resuilt as $dm){
            ?>
            <tr>
                <td><?=$dm["CatID"]?></td>
                <td><?=$dm["CatName"]?></td>
                <td><input type="checkbox" checked=<?=$dm["Status"]?>/></td>
                <td><a href = "home.php?page=category&action=detail&catid=<?=$dm["CatID"]?>" class="btn btn-primary">Chi tiết</a></td>
                <td><a href = "home.php?page=category&action=edit&catid=<?=$dm["CatID"]?>" class="btn btn-warning">Sửa</a></td>
                <td><a onclick="return confirm('Bạn có muốn xoá không ?')" href = "home.php?page=category&action=delete&catid=<?=$dm["CatID"]?>" class="btn btn-danger">Xoá</a></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
</div>