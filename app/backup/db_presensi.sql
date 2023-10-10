-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2023 pada 19.17
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_presensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(11) NOT NULL,
  `nama_aplikasi` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `nama_aplikasi`, `nama_perusahaan`, `logo`, `alamat`) VALUES
(1, 'APLIKASI PRESENSI KARYAWAN', 'SET JEK SULUT ', 'file_20230616074441.setjek-logo.png', 'Kelurahan Pondang, Kecamatan Amurang Timur, Kabupaten Minahasa Selatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `kode_area` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `area`
--

INSERT INTO `area` (`id`, `kode_area`, `area`) VALUES
(1, 'KM', 'Kombos'),
(2, 'PD', 'Pondang'),
(6, 'RB', 'Rumoong Bawah'),
(7, 'TP', 'Tumpaan'),
(8, 'LP', 'Lopana'),
(9, 'BT', 'Bitung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobtitle`
--

CREATE TABLE `jobtitle` (
  `id` int(11) NOT NULL,
  `kode_jobtitle` varchar(255) DEFAULT NULL,
  `jobtitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jobtitle`
--

INSERT INTO `jobtitle` (`id`, `kode_jobtitle`, `jobtitle`) VALUES
(1, 'MJ', 'Manajer'),
(2, 'AD', 'Admin Driver'),
(3, 'AM', 'Admin Mitra Usaha'),
(4, 'BE', 'Bendahara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nik` char(10) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `sub_area` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `nik`, `nama`, `job_title`, `no_telp`, `jenis_kelamin`, `agama`, `lokasi`, `area`, `sub_area`, `start_date`, `end_date`, `foto`) VALUES
(6, '13021', 'Fino Chrisling Colling', 'AD', '081344579316', 'Laki-Laki', 'Kristen', 'Manado', 'KM', 'Singkil', '2023-06-10', '2023-06-10', 'file_20230719213606.karyawan_laki-laki.png'),
(7, '22002', 'Achel Tapada', 'AM', '082271832112', 'Laki-Laki', 'Kristen', 'Amurang', 'PD', 'Pondang', '2023-07-21', '2023-07-21', 'file_20230720185954.karyawan_laki-laki.png'),
(8, '22003', 'Rifayel Anes', 'AM', '082190173664', 'Laki-Laki', 'Kristen', 'Amurang', 'LP', 'Lopana', '2023-07-21', '2023-07-21', 'file_20230720190301.karyawan_laki-laki.png'),
(9, '22004', 'Alfian Sampel', 'AM', '081270916721', 'Laki-Laki', 'Kristen', 'Amurang', 'RB', 'Rumoong Bawah', '2023-07-21', '2023-07-21', 'file_20230720190430.karyawan_laki-laki.png'),
(10, '22005', 'Tya Soetrisno Tamboyang', 'BE', '081222452142', 'Perempuan', 'Kristen', 'Amurang', 'PD', 'Pondang', '2023-07-21', '2023-07-21', 'file_20230720190604.karyawan_perempuan.png'),
(11, '22006', 'Stenly Watupongah', 'AD', '082241132442', 'Laki-Laki', 'Kristen', 'Amurang', 'TP', 'Tumpaan', '2023-07-21', '2023-07-21', 'file_20230720190812.karyawan_laki-laki.png'),
(12, '22007', 'Meyer Karundeng', 'AD', '082190632214', 'Laki-Laki', 'Kristen', 'Amurang', 'LP', 'Lopana', '2023-07-21', '2023-07-21', 'file_20230720191000.karyawan_laki-laki.png'),
(13, '22008', 'Vincent Lumi', 'AD', '081280711242', 'Laki-Laki', 'Kristen', 'Amurang', 'BT', 'Amurang Bitung', '2023-07-21', '2023-07-21', 'file_20230720191154.karyawan_laki-laki.png'),
(14, '22009', 'Brayen Walangitan', 'AD', '082271901311', 'Laki-Laki', 'Kristen', 'Amurang', 'TP', 'Tumpaan', '2023-07-21', '2023-07-21', 'file_20230720191325.karyawan_laki-laki.png'),
(15, '22010', 'Dedi Kawengian', 'AD', '081264713622', 'Laki-Laki', 'Kristen', 'Amurang', 'PD', 'Pondang', '2023-07-21', '2023-07-21', 'file_20230720191521.karyawan_laki-laki.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `kode`, `lokasi`) VALUES
(1, 'MDO', 'Manado'),
(2, 'AMR', 'Amurang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `nik` varchar(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `masuk` time DEFAULT NULL,
  `pulang` time DEFAULT NULL,
  `ijin` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id`, `nik`, `tanggal`, `masuk`, `pulang`, `ijin`) VALUES
(15, '13021', '2023-06-16', '19:05:29', '19:06:16', NULL),
(16, '13021', '2023-06-17', '05:08:32', '05:28:15', NULL),
(17, '13021', '2023-07-08', '07:45:01', '07:45:26', NULL),
(18, '13021', '2023-07-17', '21:58:07', '22:02:44', NULL),
(19, '13021', '2023-07-19', '07:45:19', '07:46:29', NULL),
(20, '13021', '2023-07-18', NULL, NULL, 'ijin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_area`
--

CREATE TABLE `sub_area` (
  `id` int(11) NOT NULL,
  `kode_subarea` varchar(255) DEFAULT NULL,
  `subarea` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sub_area`
--

INSERT INTO `sub_area` (`id`, `kode_subarea`, `subarea`) VALUES
(1, 'S', 'Singkil'),
(7, 'P', 'Pondang'),
(8, 'T', 'Tumpaan'),
(9, 'L', 'Lopana'),
(10, 'AB', 'Amurang Bitung'),
(11, 'RB', 'Rumoong Bawah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `area`, `level`) VALUES
(1, 'admin', 'admin', 'Administrator', '', 'superadmin'),
(2, 'adminarea', 'area', 'Area Terminal 1', '', 'adminarea');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id`, `level`) VALUES
(1, 'superadmin'),
(2, 'adminarea'),
(3, 'adminall'),
(4, 'karyawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobtitle`
--
ALTER TABLE `jobtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_area`
--
ALTER TABLE `sub_area`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jobtitle`
--
ALTER TABLE `jobtitle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `sub_area`
--
ALTER TABLE `sub_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
