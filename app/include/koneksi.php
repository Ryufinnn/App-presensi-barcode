<?php
$srvr="localhost";
$db="db_presensi";
$usr="root";
$pwd="";

($GLOBALS["___mysqli_ston"] = mysqli_connect($srvr, $usr, $pwd));
mysqli_select_db($GLOBALS["___mysqli_ston"], $db);
?>