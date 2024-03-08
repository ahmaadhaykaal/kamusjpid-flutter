<?php
header('Access-Control-Allow-Origin: *');   
header("Access-Control-Allow-Credentials: true");  
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
header('Access-Control-Max-Age: 1000');  
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');

include "koneksi.php";
$sql = "SELECT * FROM tbkosakata";
$result = $koneksi->query($sql);
if($result->num_rows > 0){
$res['is_success'] = true;
$res['message'] = "Berhasil Menampilkan Data";
$res['data'] = array();
while ($row = $result->fetch_assoc()) {
$res['data'][] = $row;
}
} else {
$res['is_success'] = false;
$res['message'] = "Gagal Menampilkan Data";
$res['data'] = null;
}
echo json_encode($res);
?>
