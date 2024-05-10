<?php 


require_once('../Database/Helper.php');
$quyen = array();
$db = new Helper();
$statement = "SELECT * FROM tbl_phanquyen join tbl_users on tbl_users.nhomquyen =tbl_phanquyen.nhomquyen WHERE id_user=? ";
$para = [$_SESSION['user']['id_user']];
$result = $db->fetchAll($statement, $para);
foreach ($result as $row) {
	array_push($quyen, $row['quyen']);
}

function ktne($q, $quyen)
{
	if (in_array($q, $quyen)) {
		echo "style='display:block'";
	} else {
		echo "style='display:none'";
	}
}

function ktne11($q, $quyen)
{
	if (in_array($q, $quyen)) {
		return true;
	} else {
		return false;
	}
}

?>