<?php
include("./Helper.php");
session_start();
if (!function_exists('money')) {
    function money($number, $suffix = 'đ')
    {
        if (!empty($number)) {
            return number_format($number, 0, ',', ',') . "{$suffix}";
        }
    }
}
$id_pro = $_GET['id_pro'];
$size = $_GET['size'];
$soluong = $_GET['soluong'];

$array = $_SESSION['cart'];
foreach ($array as $spgh) {
    $index = $spgh['index'];
}

$co = 0;
foreach ($array as $spgh) {
    if ($spgh['id_pro'] == $id_pro && $spgh['size'] == $size) {
        $db = new Helper();
        $stmt = "select soluong from tbl_pro_soluong as ps join tbl_size on ps.id_size = tbl_size.id_size where id_pro=? and size=?";
        $para = [$id_pro,$size];
        $result = $db->fetchOne($stmt, $para);
        $max = $result['soluong'];

        if(($array[$spgh['index']]['soluong'] +=$soluong) >=1){
            $co = 1;
            unset($_SESSION['cart']);
            $_SESSION['cart'] = $array;
            break;
        }   
    }
}


$tongTien = 0;
$tongSoLuong = 0;

if (isset($_SESSION["cart"])) {
    foreach ($_SESSION["cart"] as $row) {
        $tongSoLuong += $row['soluong'] * 1;
        $tongTien += $row['giamoi'] * $row['soluong'];
    }
}

echo money($tongTien);
echo "???";
echo $tongSoLuong;


