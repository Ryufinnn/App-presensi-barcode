<?php
include 'include/koneksi.php';
include 'include/app.php';
$s_karyawan = mysqli_query($GLOBALS["___mysqli_ston"], "SELECT * from karyawan");
$karyawan = mysqli_fetch_array($s_karyawan);
$t_karyawan = mysqli_num_rows($s_karyawan);
$skr = date('Y-m-d');
if(isset($_GET['error'])) {
	echo "<script>alert('Username atau Password Salah!')</script>";
	// echo "<script>document.location.href= '../login'</script>";
}
?>
<!DOCTYPE html>
<html>
<head>
	<title><?= $app['nama_aplikasi'];?> - <?= $app['nama_perusahaan'];?> </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="shortcut icon" href="images/icon/setjek-logo.png">
<meta name="keywords" content="Statistics UI Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.js"></script>
<!-- circle -->
<script src="js/circliful.js"></script>
						<script>
							$( document ).ready(function() { // 6,32 5,38 2,34
								$("#test-circle").circliful({
									animation: 1,
									animationStep: 5,
									foregroundBorderWidth: 15,
									backgroundBorderWidth: 15,
									percent: 71,
									textSize: 28,
									text: 'New Users',
									textStyle: 'font-size: 12px;',
									textColor: '#666'
								});
							});

						</script>
<!-- //circle -->
<!--chart js-->
<script src="js/Chart.js"></script>
<!--//chart js-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$('#horizontalTab').easyResponsiveTabs({
			type: 'default', //Types: default, vertical, accordion           
			width: 'auto', //auto or any width like 600px
			fit: true   // 100% fit in a container
		});
	});
</script>
<!--Calender -->
<link rel="stylesheet" href="css/clndr.css" type="text/css" />
	<script src="js/underscore-min.js"></script>
	<script src= "js/moment-2.2.1.js"></script>
	<script src="js/clndr.js"></script>
	<script src="js/site.js"></script>
<!--End Calender-->
<!-- chart-grid-left -->
<link rel="stylesheet" href="css/master.css">
<script src="js/d3.min.js"></script>
<script src="js/xcharts.min.js"></script>
<script src="js/rainbow.min.js"></script>
<!-- //chart-grid-left -->
<!-- fabochart -->
<link href="css/fabochart.css" rel="stylesheet" type="text/css">
<!-- //fabochart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
			new WOW().init();
	</script>
<!--//end-animate-->

</head>
<body>
	<div >
		<div class="container">
			<div class="logo">
				<h1 class="wow fadeInDown animated" data-wow-delay=".5s"><?= $app['nama_aplikasi'];?></h1>
			</div>
			<!-- header -->
			
			<!-- //header -->
			<div class="content-grids">
				<!-- content-top-grids -->
				<div class="content-top-grids">
					<div class="col-md-4 content-left">
						
					</div>
					<div class="col-md-4 contact-right">
						<div class="contact-right-top">
							<div class="contact-right-middle-heading wow fadeInUp animated" data-wow-delay=".5s">
								<h3><img src="app/images/<?= $app['logo'] ?>" width="30%" alt="Image"></h3>
							</div>
							
						</div>
						
						<div class="contact-right-middle">
							<div class="contact-right-middle-heading wow fadeInUp animated" data-wow-delay=".5s">
								<h3><img src="images/scan.png" width="20%" alt="Image">
									ADMIN </h3>
							</div>
									
							<div class="login-info">
								<form method="POST" action="controllers/login_proses.php">
									<input type="text" class="user" name="username" placeholder="Nama Admin Pengguna" required>
									<input type="password" class="user" name="password" placeholder="Kata Sandi" required>
								
									<input class="wow fadeInRight animated" data-wow-delay=".5s" type="submit" name="Sign In" value="Masuk Sebagai Admin">
									<a href="index" style="font-size: 14px; font-weight: 600;"> Kembali ke Halaman Awal</a>
								</form>
								
							</div>
						</div>
						
					</div>
					<div class="col-md-4 content-right">
						
						
					</div>
				</div>
				<!-- //content-top-grids -->
				<!-- weather-grids -->
				
				<!-- //weather-grids -->
				<!-- graph-tabs -->
				
				<!-- //graph-tabs -->
				<!-- contact-grids -->
				
				<!-- //contact-grids -->
				<!-- chart-grids -->
				
				<!-- //chart-grids -->
				<!-- footer -->
				
				<!-- //footer -->
				<div class="clearfix"> </div>
				<div class="clearfix"> </div>
				<div class="copyright" >
					
					<p>© <?= date('Y') ?> <?= $app['nama_perusahaan'];?> . Kerja Praktik</p>
				</div>
			</div>
		</div>
	</div>
	<!-- skills-bar -->
	<script src="js/bars.js"></script>
	<!-- //skills-bar -->
	<!-- clock -->
	<script language="javascript" type="text/javascript" src="js/jquery.thooClock.js"></script>  

		<!-- //fabochart -->
</body>	
</html>