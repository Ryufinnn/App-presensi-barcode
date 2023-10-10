<aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="./../images/icon/admin-icon.png" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?=$_SESSION['nama'];?></div>
                    <div class="email"></div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="../controllers/logout"><i class="material-icons">input</i>Keluar</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    
                    <li  class="active">
                        <a href="home">
                            <i class="material-icons">home</i>
                            <span>Beranda</span>
                        </a>
                    </li>
                    <li>
                        <a href="karyawan">
                            <i class="material-icons">supervisor_account</i>
                            <span>Data Karyawan</span>
                        </a>
                    </li>
                    <li >
                        <a href="presensi">
                            <i class="material-icons">access_alarms</i>
                            <span>Data Presensi</span>
                        </a>
                    </li>
					<li>
                        <a href="ijin">
                            <i class="material-icons">date_range</i>
                            <span>Izin Karyawan</span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">assignment</i>
                            <span>Laporan</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="presensi_all">Presensi Keseluruhan</a>
                            </li>
                            <li>
                                <a href="presensi_time">Presensi Time Sheet</a>
                            </li>
                            <li>
                                <a href="presensi_ijin">Izin Karyawan</a>
                            </li>
                        </ul>
                    </li>
                    
					<li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">cloud</i>
                            <span>Data Lokasi dan Jabatan</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="lokasi">Kota</a>
                            </li>
                            <li>
                                <a href="area">Daerah</a>
                            </li>
							<li>
                                <a href="subarea">Wilayah</a>
                            </li>
							<li>
                                <a href="job_title">Jabatan</a>
                            </li>
                            
                        </ul>
                    </li>
					<?php if($_SESSION['area']=='all') { ?>
					<li>
                        <a href="setting">
                            <i class="material-icons">settings</i>
                            <span>Pengaturan</span>
                        </a>
                    </li>
					<?php ;} else { echo'';}?>
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    <?= date('Y') ?> © <?= $d_aplikasi['nama_perusahaan'];?> 
                </div>
                
            </div>
            <!-- #Footer -->
        </aside>