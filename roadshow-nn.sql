-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2018 at 07:16 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roadshow-nn`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `ID_USER` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`ID_USER`, `nama`, `username`, `password`, `alamat`) VALUES
(1, 'Bagus Faisal KH', 'admin', '202cb962ac59075b964b07152d234b70', 'Tegal');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `kd_history` int(11) NOT NULL,
  `rute` text NOT NULL,
  `tanggal_buat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`kd_history`, `rute`, `tanggal_buat`) VALUES
(1, 'Dari Universitas Mercu Buana Kampus II Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMK SMTI Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMA Taman Madya Tamansiswa -> SMK Marsudi Luhur 1 Yogyakarta -> SMA Negeri 10 Yogyakarta -> SMA Muhammadiyah 5 Yogyakarta -> SMA Negeri 1 Teladan Yogyakarta -> SMA Muhammadiyah 6 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Universitas Mercu Buana Kampus II Yogyakarta (SELESAI)', '2018-08-12 13:12:09'),
(2, 'Dari SMA Negeri 10 Yogyakarta -> SMA Muhammadiyah 5 Yogyakarta -> SMK Marsudi Luhur 1 Yogyakarta -> SMK SMTI Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMA Taman Madya Tamansiswa -> SMA Negeri 10 Yogyakarta (SELESAI)', '2018-08-13 00:15:42'),
(3, 'Dari SMA Negeri 10 Yogyakarta -> SMA Muhammadiyah 5 Yogyakarta -> SMK Marsudi Luhur 1 Yogyakarta -> SMK SMTI Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMA Taman Madya Tamansiswa -> SMA Negeri 10 Yogyakarta (SELESAI)', '2018-08-13 06:24:24'),
(4, 'Dari SMA Negeri 10 Yogyakarta -> SMA Muhammadiyah 5 Yogyakarta -> SMK Marsudi Luhur 1 Yogyakarta -> SMK SMTI Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMA Taman Madya Tamansiswa -> SMA Negeri 10 Yogyakarta (SELESAI)', '2018-08-13 06:25:07'),
(5, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> SMK SMTI Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMK Marsudi Luhur 1 Yogyakarta -> SMA Negeri 10 Yogyakarta -> SMA Muhammadiyah 5 Yogyakarta -> SMA Negeri 1 Teladan Yogyakarta -> MA Muhammadiyah 6 Yogyakarta -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-13 07:38:23'),
(6, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> SMK SMTI Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMK Marsudi Luhur 1 Yogyakarta -> SMA Negeri 10 Yogyakarta -> SMA Muhammadiyah 5 Yogyakarta -> SMA Negeri 1 Teladan Yogyakarta -> MA Muhammadiyah 6 Yogyakarta -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 00:53:56'),
(7, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> SMK SMTI Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMK Marsudi Luhur 1 Yogyakarta -> SMA Negeri 10 Yogyakarta -> SMA Muhammadiyah 5 Yogyakarta -> SMA Negeri 1 Teladan Yogyakarta -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 00:55:05'),
(8, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 03:17:08'),
(9, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 03:17:57'),
(10, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 03:18:27'),
(11, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:12:21'),
(12, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:20:22'),
(13, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:21:32'),
(14, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:21:54'),
(15, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:23:28'),
(16, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:23:48'),
(17, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:23:52'),
(18, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:24:01'),
(19, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:25:20'),
(20, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:25:53'),
(21, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:26:00'),
(22, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:26:06'),
(23, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Muhammadiyah 2 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakart -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:26:23'),
(24, 'Dari Universitas Mercu Buana Yogyakarta, Kampus II -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Universitas Mercu Buana Yogyakarta, Kampus II (SELESAI)', '2018-08-29 06:37:21'),
(25, 'Dari Kampus II Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus II Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-29 06:39:04'),
(26, 'Dari Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-29 06:39:52'),
(27, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-29 06:40:27'),
(28, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-29 06:46:05'),
(29, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-29 21:25:14'),
(30, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 03:35:05'),
(31, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 03:40:43'),
(32, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 05:24:06'),
(33, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 05:33:28'),
(34, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 06:45:21'),
(35, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMK SMTI Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 07:38:09'),
(36, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMA Taman Madya Tamansiswa -> SMK Marsudi Luhur 1 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 08:08:10'),
(37, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMA Taman Madya Tamansiswa -> SMK Marsudi Luhur 1 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 22:38:53'),
(38, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> Sekolah Menengah Atas Negeri 8 Yogyakarta -> SMA Negeri 5 Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 22:43:50'),
(39, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMK Negeri 6 Yogyakarta -> SMK SMTI Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 23:07:34'),
(40, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMA Taman Madya Tamansiswa -> SMK Marsudi Luhur 1 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 23:11:07'),
(41, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMK Negeri 6 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMK SMTI Yogyakarta -> SMA Taman Madya Tamansiswa -> SMK Marsudi Luhur 1 Yogyakarta -> SMA Negeri 10 Yogyakarta -> Madrasah Aliyah Negeri 2 Yogyakarta -> SMA Negeri 1 Teladan Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-08-30 23:21:38'),
(42, 'Dari Kampus 2 Universitas Mercu Buana Yogyakarta -> SMA Negeri 8 Yogyakarta -> SMK Negeri 6 Yogyakarta -> Sekolah Menengah Kejuruan Koperasi Yogyakarta -> SMK SMTI Yogyakarta -> SMA Taman Madya Tamansiswa -> SMK Marsudi Luhur 1 Yogyakarta -> SMA Negeri 10 Yogyakarta -> Madrasah Aliyah Negeri 2 Yogyakarta -> SMA Negeri 1 Teladan Yogyakarta -> SMA Negeri 7 Yogyakarta -> Kampus 2 Universitas Mercu Buana Yogyakarta (SELESAI)', '2018-09-05 14:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nama_sekolah`, `latitude`, `longitude`, `alamat`) VALUES
(22, 'Kampus 2 Universitas Mercu Buana Yogyakarta', -7.7630548, 110.3923674, 'Jalan Jembatan Merah No.84C, Condongcatur, Depok, Soropadan, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281'),
(46, 'SMA Negeri 1 Teladan Yogyakarta', -7.7997673, 110.3504014, 'Jalan Hos Cokroaminoto No.10, Pakuncen, Wirobrajan, Pakuncen, Wirobrajan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55253'),
(47, 'SMA Negeri 5 Yogyakarta', -7.8224668, 110.397249, 'Jl. Nyi Pembayun No.39, Prenggan, Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55172'),
(48, 'SMA Negeri 7 Yogyakarta', -7.8136071, 110.3563172, 'Jalan MT. Haryono No.47, Suryodiningratan, Mantrijeron, Suryodiningratan, Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55141'),
(49, 'SMA Negeri 8 Yogyakarta', -7.7995393, 110.3932338, 'Jl. Sidobali No.1, Muja Muju, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55165'),
(50, 'SMA Negeri 10 Yogyakarta', -7.7978118, 110.360594, 'Jalan Gadean No.5, Ngupasan, Gondomanan, Ngupasan, Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122'),
(51, 'SMK Negeri 6 Yogyakarta', -7.7976474, 110.3806324, 'Jl. Kenari No.4, Semaki, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166'),
(52, 'SMK SMTI Yogyakarta', -7.8015102, 110.3787022, 'Jl. Kusumanegara, Banguntapan, Kotagede, Bantul, Daerah Istimewa Yogyakarta 55171'),
(53, 'Sekolah Menengah Kejuruan Koperasi Yogyakarta', -7.800496, 110.3804683, 'Jalan Kapas I No.5, Semaki, Umbulharjo, Semaki, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166'),
(54, 'SMA Taman Madya Tamansiswa', -7.8054574, 110.3782258, 'Jalan Tamansiswa No.25D, Wirogunan, Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151'),
(55, 'SMK Marsudi Luhur 1 Yogyakarta', -7.8014591, 110.3650047, 'Jl. Panembahan Senopati No.6, Prawirodirjan, Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55121'),
(56, 'Madrasah Aliyah Negeri 2 Yogyakarta', -7.8007879, 110.3548365, 'Jl. KH. Ahmad Dahlan No.130, Ngampilan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55261');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`ID_USER`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`kd_history`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `kd_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
