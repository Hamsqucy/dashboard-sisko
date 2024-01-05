-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 03, 2023 at 03:56 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisko_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'website123');

-- --------------------------------------------------------

--
-- Table structure for table `mbank`
--

CREATE TABLE `mbank` (
  `no_virtual_account` varchar(30) NOT NULL,
  `nilai_pebayaran` varchar(30) DEFAULT NULL,
  `no_rekening` varchar(30) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_bank` varchar(30) NOT NULL,
  `nama_cabang` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mbank`
--

INSERT INTO `mbank` (`no_virtual_account`, `nilai_pebayaran`, `no_rekening`, `nis`, `nama_bank`, `nama_cabang`, `created_at`, `updated_at`) VALUES
('702071910225341', '150000', '545601000240505', 2016102239, 'BRI', 'KCP BRI Tambun', '2021-06-20 04:40:15', '2021-06-20 14:23:40'),
('702071910225343', '200000', '1560009861578', 2016102247, 'Mandiri', 'KCP Mandiri Bekasi Timur', '2021-06-20 04:42:44', '2021-06-20 14:23:51'),
('702071910225344', '250000', '0223874890', 2016102250, 'BNI', 'KCP BNI Cikarang Selatan', '2021-06-20 04:45:13', '2021-06-20 14:24:05'),
('702071910225346', '300000', '5220304312', 2016103130, 'BCA', 'KCP BCA Depok', '2021-06-20 04:48:35', '2021-06-20 14:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `mguru`
--

CREATE TABLE `mguru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_ktp` varchar(35) NOT NULL,
  `status_keluarga` enum('Lajang','Menikah') NOT NULL,
  `id_jabatan` varchar(8) NOT NULL,
  `foto` varchar(15) NOT NULL,
  `status_pegawai` enum('Honorer','Tetap') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mguru`
--

INSERT INTO `mguru` (`id_guru`, `nip`, `nama_guru`, `tempat_lahir`, `tgl_lahir`, `alamat`, `no_ktp`, `status_keluarga`, `id_jabatan`, `foto`, `status_pegawai`, `created_at`, `updated_at`) VALUES
(1101, '1117286', 'Ade', 'Jakarta', '1989-01-10', 'Bintaro', '3216061001890001', 'Menikah', '21', '1101.jpg', 'Honorer', '2020-01-08 11:27:35', '2020-01-09 05:50:35'),
(1103, '1117282', 'Kosasih Muchtar', 'Jakarta', '1984-06-18', 'Jalan Cempedak 1 Blok C NO.69 RT001/015 Perumahan Jatimulya Bekasi Timur', '3216062705970001', 'Menikah', '21', '1103.jpg', 'Tetap', '2019-12-23 17:58:12', '2019-12-25 17:54:57'),
(1104, '1117285', 'Dedi Haryanto', 'Magetan', '1987-01-02', 'Margahayu', '32162511790002', 'Menikah', '21', '1104.jpg', 'Tetap', '2019-12-25 16:30:40', '2019-12-25 16:30:40'),
(1106, '1117289', 'Halim Kusuma', 'Bandung', '1978-01-08', 'Jalan Agus Salim Bekasi', '3210060801780009', 'Menikah', '12', '1106.jpg', 'Tetap', '2020-01-08 23:39:36', '2020-01-08 23:39:36'),
(1107, '1117259', 'Zakaria Bawazier', 'Jakarta', '1979-01-22', 'Jalan Margahayu Raya Bekasi Timur', '3216062201790001', 'Menikah', '21', '1107.jpg', 'Tetap', '2020-01-08 23:42:45', '2020-01-08 23:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `mjenis_pembayaran`
--

CREATE TABLE `mjenis_pembayaran` (
  `id_jenis_pembayaran` int(11) NOT NULL,
  `nama_jenis_pembayaran` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mjenis_pembayaran`
--

INSERT INTO `mjenis_pembayaran` (`id_jenis_pembayaran`, `nama_jenis_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 'Tunai', '2019-12-20 18:08:06', '2019-12-20 18:08:55'),
(2, 'Transfer', '2019-12-20 18:08:06', '2019-12-20 18:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `mkasir`
--

CREATE TABLE `mkasir` (
  `id_kasir` int(11) NOT NULL,
  `nama_kasir` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkasir`
--

INSERT INTO `mkasir` (`id_kasir`, `nama_kasir`, `created_at`, `updated_at`) VALUES
(1, 'Yanti', '2019-12-20 18:08:06', '2019-12-20 18:08:55'),
(2, 'Udin', '2019-12-20 18:08:06', '2019-12-20 18:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `mkelas`
--

CREATE TABLE `mkelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(35) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `id_tahun_ajaran` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkelas`
--

INSERT INTO `mkelas` (`id_kelas`, `nama_kelas`, `id_guru`, `nis`, `id_tahun_ajaran`, `created_at`, `updated_at`) VALUES
(123, 'XRPL3', 1103, 2016102250, 1, '2019-12-19 09:52:53', '2019-12-23 10:31:01'),
(124, 'XRPL2', 1101, 2016102239, 1, '2020-01-08 11:34:40', '2020-01-08 11:49:47'),
(125, 'XRPL1', 1104, 2016102247, 1, '2019-12-29 00:25:45', '2019-12-29 00:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `mmatpel`
--

CREATE TABLE `mmatpel` (
  `id_matpel` varchar(15) NOT NULL,
  `nama_matpel` varchar(70) NOT NULL,
  `status_pelajaran` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mmatpel`
--

INSERT INTO `mmatpel` (`id_matpel`, `nama_matpel`, `status_pelajaran`, `created_at`, `updated_at`) VALUES
('M0001', 'Pemograman VB', 'Aktif', '2019-12-29 00:20:35', '2019-12-29 00:20:35'),
('M0002', 'MTK', 'Aktif', '2020-01-08 11:28:12', '2020-01-08 11:28:12'),
('M0003', 'Bahasa Indonesia', 'Aktif', '2020-01-08 11:28:38', '2020-01-08 11:28:38'),
('M0004', 'Bahasa Inggris', 'Aktif', '2020-01-08 11:29:10', '2020-01-08 11:29:10'),
('M0005', 'Bahasa Sunda', 'Tidak Aktif', '2020-01-09 05:52:21', '2020-01-09 05:52:39'),
('M0006', 'Bahasa Jepang', 'Aktif', '2022-11-10 01:52:56', '2022-11-10 01:52:56'),
('M0007', 'UI Design', 'Tidak Aktif', '2022-11-10 02:05:56', '2022-11-10 02:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `msemester`
--

CREATE TABLE `msemester` (
  `id_semester` int(5) NOT NULL,
  `nama_semester` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `msemester`
--

INSERT INTO `msemester` (`id_semester`, `nama_semester`, `created_at`, `updated_at`) VALUES
(1, '2017/2018 semes', '2019-12-20 18:08:06', '2019-12-20 18:08:55'),
(2, '2017/2018 semes', '2019-12-20 18:08:06', '2019-12-20 18:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `msiswa`
--

CREATE TABLE `msiswa` (
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','W') NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `nama_ortu` varchar(50) NOT NULL,
  `pekerjaan_ortu` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `msiswa`
--

INSERT INTO `msiswa` (`nis`, `nama_siswa`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `no_hp`, `foto`, `id_kelas`, `asal_sekolah`, `nama_ortu`, `pekerjaan_ortu`, `created_at`, `updated_at`) VALUES
(32321321, 'Madun', 'L', 'Bekasi', '2022-06-07', 'Bekaasi', '09200000', '', 3, 'bekasi', 'bekasi', 'bekasi', '2022-06-20 06:55:41', '2022-06-20 06:55:41'),
(2016102239, 'Raden Faris Jatmika', 'L', 'Bekas', '1998-01-08', 'Perumnas 1 Bekasi Timur', '085715150857', '2016102239.jpg', 124, 'SMPN 4 Tamsel', 'Jati', 'Pegawai Swasta', '2020-01-08 11:49:32', '2020-01-08 11:49:32'),
(2016102247, 'Khairunissa', 'W', 'Jakarta', '1998-12-13', 'Pondok Gede', '085814887522', '2016102247.jpg', 125, 'SMPN 12 Jatimakmur', 'Badriah', 'Guru', '2019-12-20 20:08:48', '2019-12-20 20:08:48'),
(2016102250, 'Dwi Sulistyo Nugroho', 'L', 'Bekasi Timur', '1997-05-27', 'Jalan Cempedak 1 Blok C No. 69RT007/015 Perumahan Jatimulya Bekasi Timur', '08111102723', '2016102250.jpg', 123, 'SMPN 4 Tamsel', 'Riyono', 'Wiraswasta', '2019-12-20 17:37:29', '2019-12-30 21:16:29'),
(2016103130, 'Vica Apriyanto', 'W', 'Bekasi', '1997-03-23', 'Jalan Toyogiri Selatan Bekasi Timur', '082728191887', '', 123, 'SMP Mandalahayu', 'Sumiati', 'Pegawai Swasta Test', '2020-01-08 11:51:49', '2022-06-20 06:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `mtahun_ajaran`
--

CREATE TABLE `mtahun_ajaran` (
  `id_tahun_ajaran` int(5) NOT NULL,
  `nama_tahun_ajaran` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mtahun_ajaran`
--

INSERT INTO `mtahun_ajaran` (`id_tahun_ajaran`, `nama_tahun_ajaran`, `created_at`, `updated_at`) VALUES
(1, '2017/2018', '2019-12-20 18:08:06', '2019-12-20 18:08:55'),
(2, '2019/2020', '2019-12-20 18:08:06', '2019-12-20 18:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `tnilai_siswa`
--

CREATE TABLE `tnilai_siswa` (
  `id_nilai_siswa` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `id_matpel` varchar(15) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_tahun_ajaran` int(5) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `nilai_harian1` decimal(4,2) DEFAULT NULL,
  `nilaiharian2` decimal(4,2) DEFAULT NULL,
  `nilaiharian3` decimal(4,2) DEFAULT NULL,
  `nilai_tugas1` decimal(4,2) DEFAULT NULL,
  `nilai_tugas2` decimal(4,2) DEFAULT NULL,
  `nilai_uts` decimal(4,2) DEFAULT NULL,
  `nilai_uas` decimal(4,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tnilai_siswa`
--

INSERT INTO `tnilai_siswa` (`id_nilai_siswa`, `nis`, `id_matpel`, `id_kelas`, `id_guru`, `id_tahun_ajaran`, `id_semester`, `nilai_harian1`, `nilaiharian2`, `nilaiharian3`, `nilai_tugas1`, `nilai_tugas2`, `nilai_uts`, `nilai_uas`, `created_at`, `updated_at`) VALUES
(1, 2016102247, 'M0001', 125, 1103, 1, 1, 80.50, 80.00, 80.00, 80.00, 80.00, 80.00, 80.00, '2019-12-29 07:29:03', '2020-01-08 10:04:19'),
(2, 2016102247, 'M0003', 125, 1101, 1, 1, 85.00, 78.00, 89.00, 75.00, 89.00, 85.00, 87.00, '2020-01-08 11:53:25', '2020-01-08 11:53:25'),
(3, 2016102247, 'M0004', 125, 1106, 1, 1, 95.00, 80.00, 85.00, 80.00, 80.00, 84.00, 81.00, '2020-01-08 23:40:25', '2020-01-08 23:40:25'),
(4, 2016102247, 'M0002', 125, 1107, 1, 1, 78.00, 80.00, 79.00, 85.00, 80.00, 77.00, 76.00, '2020-01-08 23:43:57', '2020-01-08 23:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `tpembayaran`
--

CREATE TABLE `tpembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_tahun_ajaran` int(5) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_jenis_pembayaran` int(11) NOT NULL,
  `no_virtual_account` varchar(30) DEFAULT NULL,
  `nilai_pebayaran` varchar(30) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `id_kasir` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tpembayaran`
--

INSERT INTO `tpembayaran` (`id_pembayaran`, `nis`, `id_kelas`, `id_tahun_ajaran`, `id_semester`, `id_jenis_pembayaran`, `no_virtual_account`, `nilai_pebayaran`, `keterangan`, `id_kasir`, `created_at`, `updated_at`) VALUES
(23, 2016102239, 123, 2, 1, 2, '702071910225341', '150000', 'Pembayaran Semester 2', 2, '2021-06-21 04:46:07', '2021-06-21 04:46:07'),
(26, 2016102247, 125, 1, 2, 2, '702071910225343', '200000', 'Pembayaran Semester 2', 1, '2021-06-21 05:00:36', '2021-06-21 05:00:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbank`
--
ALTER TABLE `mbank`
  ADD PRIMARY KEY (`no_virtual_account`);

--
-- Indexes for table `mguru`
--
ALTER TABLE `mguru`
  ADD PRIMARY KEY (`id_guru`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `mjenis_pembayaran`
--
ALTER TABLE `mjenis_pembayaran`
  ADD PRIMARY KEY (`id_jenis_pembayaran`);

--
-- Indexes for table `mkasir`
--
ALTER TABLE `mkasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `mkelas`
--
ALTER TABLE `mkelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `fk_guru` (`id_guru`),
  ADD KEY `fk_siswa` (`nis`);

--
-- Indexes for table `mmatpel`
--
ALTER TABLE `mmatpel`
  ADD PRIMARY KEY (`id_matpel`);

--
-- Indexes for table `msemester`
--
ALTER TABLE `msemester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `msiswa`
--
ALTER TABLE `msiswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `mtahun_ajaran`
--
ALTER TABLE `mtahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

--
-- Indexes for table `tnilai_siswa`
--
ALTER TABLE `tnilai_siswa`
  ADD PRIMARY KEY (`id_nilai_siswa`),
  ADD KEY `id_matpel` (`id_matpel`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `id_semester` (`id_semester`);

--
-- Indexes for table `tpembayaran`
--
ALTER TABLE `tpembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_kasir` (`id_kasir`),
  ADD KEY `id_kelas` (`id_kelas`,`id_tahun_ajaran`,`id_semester`,`id_jenis_pembayaran`,`no_virtual_account`),
  ADD KEY `no_virtual_account` (`no_virtual_account`),
  ADD KEY `id_jenis_pembayaran` (`id_jenis_pembayaran`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `id_semester` (`id_semester`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mjenis_pembayaran`
--
ALTER TABLE `mjenis_pembayaran`
  MODIFY `id_jenis_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mkasir`
--
ALTER TABLE `mkasir`
  MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `msemester`
--
ALTER TABLE `msemester`
  MODIFY `id_semester` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mtahun_ajaran`
--
ALTER TABLE `mtahun_ajaran`
  MODIFY `id_tahun_ajaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tnilai_siswa`
--
ALTER TABLE `tnilai_siswa`
  MODIFY `id_nilai_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tpembayaran`
--
ALTER TABLE `tpembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tnilai_siswa`
--
ALTER TABLE `tnilai_siswa`
  ADD CONSTRAINT `tnilai_siswa_ibfk_1` FOREIGN KEY (`id_matpel`) REFERENCES `mmatpel` (`id_matpel`),
  ADD CONSTRAINT `tnilai_siswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `mkelas` (`id_kelas`),
  ADD CONSTRAINT `tnilai_siswa_ibfk_3` FOREIGN KEY (`nis`) REFERENCES `msiswa` (`nis`),
  ADD CONSTRAINT `tnilai_siswa_ibfk_4` FOREIGN KEY (`id_guru`) REFERENCES `mguru` (`id_guru`),
  ADD CONSTRAINT `tnilai_siswa_ibfk_5` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `mtahun_ajaran` (`id_tahun_ajaran`),
  ADD CONSTRAINT `tnilai_siswa_ibfk_6` FOREIGN KEY (`id_semester`) REFERENCES `msemester` (`id_semester`);

--
-- Constraints for table `tpembayaran`
--
ALTER TABLE `tpembayaran`
  ADD CONSTRAINT `tpembayaran_ibfk_1` FOREIGN KEY (`no_virtual_account`) REFERENCES `mbank` (`no_virtual_account`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tpembayaran_ibfk_2` FOREIGN KEY (`id_kasir`) REFERENCES `mkasir` (`id_kasir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tpembayaran_ibfk_3` FOREIGN KEY (`id_jenis_pembayaran`) REFERENCES `mjenis_pembayaran` (`id_jenis_pembayaran`),
  ADD CONSTRAINT `tpembayaran_ibfk_4` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `mtahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tpembayaran_ibfk_5` FOREIGN KEY (`nis`) REFERENCES `msiswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tpembayaran_ibfk_6` FOREIGN KEY (`id_kelas`) REFERENCES `mkelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tpembayaran_ibfk_7` FOREIGN KEY (`id_semester`) REFERENCES `msemester` (`id_semester`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
