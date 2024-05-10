<?php
include("../Control/inc/config.php");
$sodong = 7;
if (empty($_GET['search'])) {
    $statement = $pdo->prepare("SELECT * FROM tbl_nhacungcap where daxoa <>1");
} else {
    $search = $_GET['search'];
    if(is_numeric($search)){
        $statement = $pdo->prepare("SELECT * FROM tbl_nhacungcap where daxoa <>1 and id_ncc regexp '$search' or ten_ncc regexp '$search' ");
    }else{
        $statement = $pdo->prepare("SELECT * FROM tbl_nhacungcap where daxoa <>1 and ten_ncc regexp '$search' ");
    }  
}
$statement->execute();
$sokq = $statement->rowCount();
$sotrang = round($sokq/ $sodong + 0.4);
if (!empty($_GET['p'])) {
    $p = $_GET['p'];
} else $p = 1;

$min = $sodong * ($p - 1);
?>

<?php
if (empty($_GET['search'])) {
    $statement = $pdo->prepare("SELECT * FROM tbl_nhacungcap where daxoa <>1 limit $sodong offset $min");
} else {
    $search = $_GET['search'];
    if(is_numeric($search)){
        $statement = $pdo->prepare("SELECT * FROM tbl_nhacungcap where daxoa <>1 and id_ncc regexp '$search' or ten_ncc regexp '$search' limit $sodong offset $min");
    }else{
        $statement = $pdo->prepare("SELECT * FROM tbl_nhacungcap where daxoa <>1 and ten_ncc regexp '$search' limit $sodong offset $min");
    }  
}  
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
?>
    <tr class="dong">
        <td><?php echo $row['id_ncc']; ?></td>
        <td><?php echo $row['ten_ncc']; ?></td>
        <td>
            <a id="sua" href="index.php?page=nhacungcap-edit&id=<?php echo $row['id_ncc']; ?>" class="btn btn-primary btn-xs" >Edit</a>
            <a id="xoa" class="btn btn-danger btn-xs" data-href="index.php?page=nhacungcap-delete&id=<?php echo $row['id_ncc']; ?>" data-toggle="modal" data-target="#confirm-delete"  >Delete</a>
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
