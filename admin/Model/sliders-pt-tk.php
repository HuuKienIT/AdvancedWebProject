<?php
include("../Database/Helper.php");
// include("../Control/inc/config.php");
$sodong = 3;

    $statement = "SELECT * FROM tbl_sliders ";

$db = new Helper();
$sokq = $db->rowCount($statement);
$sotrang = round($sokq / $sodong + 0.4);
if (!empty($_GET['p'])) {
    $p = $_GET['p'];
} else $p = 1;

$min = $sodong * ($p - 1);
?>

<?php

    $statement = "SELECT * FROM tbl_sliders  limit $sodong offset $min";

$result = $db->fetchAll($statement);
foreach ($result as $row) {
?>
    <tr>
        <td class="col-md-1"><?php echo $row['id_sliders']; ?></td>
        <td class="col-md-2">
            <div class="col-md-4"></div>
            <img src="../../uploads/<?php echo $row['photo']; ?>" alt="" class="col-md-4">
        </td>
        <td class="col-md-2">
            <a id="sua" href="index.php?page=slider-edit&id=<?php echo $row['id_sliders']; ?>" class="btn btn-primary btn-xs">Edit</a>
            <a id="xoa" href="#" class="btn btn-danger btn-xs" data-href="index.php?page=slider-delete&id=<?php echo $row['id_sliders']; ?>" data-toggle="modal" data-target="#confirm-delete">Delete</a>
        </td>
    </tr>
<?php
}
echo "???";
?>
<?php   
for ($i = 1; $i <= $sotrang; $i++) {
    if($sotrang==1){break;}
?>
    <li class="page-item <?php if ($p == $i) echo "active"; ?>"><a class="page-link" onclick="show(<?php echo $i; ?>)"><?php echo $i; ?></php></a></li>
<?php

}

?>