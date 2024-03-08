<?php
$koneksi = mysqli_connect("localhost", "root", "", "dbkamusjp");
if($koneksi) {
// echo "Berhasil konek ke database";
} else {
echo "Gagal koneksi";
}
?>