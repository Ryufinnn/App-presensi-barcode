<?php
include '../include/koneksi.php';

$nik = $_POST['nik'];
$tanggal = date('Y-m-d');
$masuk = date('Y-m-d H:i:s');
$cek =mysqli_num_rows(mysqli_query($GLOBALS["___mysqli_ston"], "SELECT nik from karyawan where nik ='$nik'"));

if ($cek===1){
	
$cekdata ="select * from presensi where nik ='$nik' AND tanggal ='$tanggal' ";
$ada=mysqli_query($GLOBALS["___mysqli_ston"], $cekdata) or die(mysqli_error($GLOBALS["___mysqli_ston"]));
if(mysqli_num_rows($ada)>0)
{ 
	?>
            <audio autoplay="true">
					<source src="include/qrcode.mp3" type="audio/mpeg">
				</audio>';
<?php 
header('location:../masuk?pesan='.base64_encode('Anda sudah mengambil presensi hari ini'));
} else {
	
$sql = "INSERT INTO presensi (nik, tanggal, masuk) VALUES ('$nik','$tanggal','$masuk')";
$proses = mysqli_query($GLOBALS["___mysqli_ston"], $sql);
	if ($proses) {
		?>
            <audio controls autoplay>
					<source src="include/qrcode.mp3" type="audio/mpeg">
				</audio>
<?php 
		header('location:../masuk?pesan='.base64_encode('Presensi berhasil'));
	} else { echo "Data belum dapat di simpan!!"; 
	}
}

} else {
header('location:../masuk?pesan='.base64_encode('Maaf No NIK tidak ditemukan'));

}

?>