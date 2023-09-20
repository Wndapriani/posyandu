-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 02:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu`
--

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE `anak` (
  `id` varchar(8) NOT NULL,
  `registrar` varchar(46) NOT NULL,
  `dibuat` datetime NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(46) NOT NULL,
  `alamat` varchar(22) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `estimasi_ttl` tinyint(1) NOT NULL DEFAULT 0,
  `kelamin` enum('L','P') NOT NULL DEFAULT 'L',
  `bbl` int(11) DEFAULT NULL COMMENT 'dalam gr',
  `ibu` varchar(46) NOT NULL,
  `ayah` varchar(46) DEFAULT NULL,
  `akb` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `anak`
--

INSERT INTO `anak` (`id`, `registrar`, `dibuat`, `nama`, `alamat`, `tanggal_lahir`, `estimasi_ttl`, `kelamin`, `bbl`, `ibu`, `ayah`, `akb`) VALUES
('1OfTgatz', 'kader', '2023-08-11 20:56:35', 'Dela Hidayah', '52.03.01.2001', '2023-01-28', 0, 'P', 3, 'Azizi Syafa Asadel', 'Asrul Hardy Hidayat', 1),
('5I7mwanj', 'kader', '2023-08-11 08:40:08', 'M. Hendriawan', '52.03.18.2001', '2020-05-12', 0, 'L', 2, 'Aminah', 'Sumandur', 1),
('6DAg3W8x', 'kader', '2023-08-11 08:45:39', 'Malika Azka Aulia', '52.03.18.2001', '2022-01-12', 0, 'P', 2, 'Rizki Aulfi', 'Maliki', 1),
('80HN1FrA', 'kader', '2023-08-11 08:50:23', 'Andina Nursifa Amala', '52.03.18.2001', '2022-12-04', 0, 'P', 4, 'Bq. Yulia Ningsih', 'M. Abidin Ali', 4),
('CxSuyvRt', 'kader', '2023-08-11 08:54:14', 'Salsa Maulina', '52.03.18.2001', '2022-08-09', 0, 'P', 3, 'Jumaini', 'Hasanudin', 3),
('cyRXE9I0', 'kader', '2023-08-11 08:37:25', 'Abdul Kader Zaelani', '52.03.18.2001', '2020-03-08', 0, 'L', 3, 'Maleyah', 'Sumans', 1),
('FTTNZzAh', 'kader', '2023-08-11 08:43:07', 'Arlena Khairulilm', '52.03.18.2001', '2020-02-18', 0, 'L', 3, 'Elmiati', 'Sahrul', 3),
('jE3IV78R', 'kader', '2023-08-11 08:52:00', 'Ahmad Ilham Alfarizi', '52.03.18.2001', '2022-03-06', 0, 'L', 2, 'Ilma Sukmiatun', 'Ahmad Fauzi', 1),
('sIZK4Vxv', 'kader', '2023-08-11 08:47:31', 'M. Rifawan', '52.03.18.2001', '2022-01-01', 0, 'L', 3, 'Masutan', 'Sahni', 3),
('TDzFbsun', 'kader', '2023-08-11 08:33:56', 'Ahmad Azzam Alfarizki', '52.03.18.2001', '2020-02-14', 0, 'L', 3, 'elfi hartini', 'khaerul hamdi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `bumil`
--

CREATE TABLE `bumil` (
  `id` varchar(10) NOT NULL,
  `nomor` varchar(10) DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `nama` varchar(46) NOT NULL,
  `nama_suami` varchar(46) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `ttl_estimasi` enum('1','0') NOT NULL DEFAULT '0',
  `domisili` varchar(92) NOT NULL,
  `alamat` varchar(16) NOT NULL,
  `pendidikan` varchar(8) NOT NULL DEFAULT '-',
  `pekerjaan` varchar(46) DEFAULT NULL,
  `agama` enum('-','islam','kristen katolik','hindu','kristen protestan','buda','konghucu') NOT NULL DEFAULT '-',
  `kartu_kesehatan` varchar(46) DEFAULT NULL,
  `golongan_darah` enum('-','A','B','O','AB') NOT NULL DEFAULT '-',
  `hp` varchar(15) DEFAULT NULL,
  `registrar` varchar(46) NOT NULL,
  `dibuat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bumil`
--

INSERT INTO `bumil` (`id`, `nomor`, `rt`, `nama`, `nama_suami`, `tanggal_lahir`, `ttl_estimasi`, `domisili`, `alamat`, `pendidikan`, `pekerjaan`, `agama`, `kartu_kesehatan`, `golongan_darah`, `hp`, `registrar`, `dibuat`) VALUES
('eTEWYucqvD', '6546654765', '0/0', 'wanda', 'siapa', '2002-04-04', '0', '52.03.18.2001', '52.03.18.2001', 'SMA', 'nganggur', 'islam', 'jamkesmas', 'A', '098765675887', 'kader', '2023-07-20 11:39:17'),
('JolOajuJEy', NULL, '04/00', 'Azizi Shafa Asadel', 'Asrul Hardy Hidayat', '2023-01-28', '0', '52.03.17.2003', '52.03.01.2004', 'S1', 'Dancer', 'islam', '', 'O', '082341647851', 'kader', '2023-08-11 21:02:03'),
('NBdJH98r3S', NULL, '4552442', 'ibuu', 'bapak', '2000-01-01', '0', '52.03.01.2014', '52.03.01.2002', 'SMA', 'kepo', 'islam', 'jamkesmas', 'A', '0989876765', 'kader', '2023-07-26 07:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan_anak`
--

CREATE TABLE `kunjungan_anak` (
  `id` varchar(8) NOT NULL,
  `registrar` varchar(46) NOT NULL,
  `nama_pemeriksa` varchar(46) NOT NULL,
  `dibuat` datetime NOT NULL DEFAULT current_timestamp(),
  `anak` varchar(8) NOT NULL,
  `bulan` date NOT NULL,
  `berat` int(11) NOT NULL COMMENT 'dalam gr',
  `tinggi` int(11) NOT NULL COMMENT 'dalam cm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kunjungan_anak`
--

INSERT INTO `kunjungan_anak` (`id`, `registrar`, `nama_pemeriksa`, `dibuat`, `anak`, `bulan`, `berat`, `tinggi`) VALUES
('KBwXCKef', 'kader', 'Kader', '2023-09-18 13:00:12', '1OfTgatz', '2023-09-01', 10, 100),
('UXvjISDo', 'kader', 'Farida', '2023-08-11 20:58:49', '1OfTgatz', '2023-08-01', 5, 90);

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan_bumil`
--

CREATE TABLE `kunjungan_bumil` (
  `id` varchar(8) NOT NULL,
  `registrar` varchar(46) NOT NULL,
  `ibu` varchar(10) NOT NULL,
  `faskes` varchar(92) DEFAULT NULL,
  `tgl_periksa` date NOT NULL DEFAULT current_timestamp(),
  `dibuat` date NOT NULL DEFAULT current_timestamp(),
  `nama_pemeriksa` varchar(46) NOT NULL,
  `posyandu` varchar(46) DEFAULT NULL,
  `dukun` varchar(46) DEFAULT NULL,
  `gravida` int(3) NOT NULL DEFAULT 1,
  `paritas` int(3) NOT NULL DEFAULT 0,
  `abortus` int(3) NOT NULL DEFAULT 0,
  `hidup` int(3) NOT NULL DEFAULT 0,
  `hpht` date DEFAULT NULL,
  `hpl` date DEFAULT NULL,
  `persalinan_sebemulnya` date DEFAULT NULL,
  `bb` int(11) DEFAULT NULL,
  `tb` int(11) DEFAULT NULL,
  `buku_kia` enum('','1','0') NOT NULL DEFAULT '',
  `riwayat_komplikasi` varchar(115) DEFAULT NULL,
  `penyakit` varchar(115) DEFAULT NULL,
  `persalinan_tgl` date DEFAULT NULL,
  `persalinan_penolong` varchar(92) DEFAULT NULL,
  `persalinan_pendamping` varchar(92) DEFAULT NULL,
  `persalinan_tempat` varchar(92) DEFAULT NULL,
  `persalinan_transportasi` varchar(92) DEFAULT NULL,
  `persalinan_pendonor` varchar(92) DEFAULT NULL,
  `persalinan_kunjungan_rumah` varchar(46) DEFAULT NULL,
  `persalinan_kondisi_rumah` varchar(46) DEFAULT NULL,
  `persalinan_persedian` varchar(46) DEFAULT NULL,
  `lila` int(11) DEFAULT NULL,
  `fundus` int(11) DEFAULT NULL,
  `hb` int(11) DEFAULT NULL,
  `usia_kehamilan` int(11) DEFAULT NULL COMMENT 'dalam hari',
  `ttd` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kunjungan_bumil`
--

INSERT INTO `kunjungan_bumil` (`id`, `registrar`, `ibu`, `faskes`, `tgl_periksa`, `dibuat`, `nama_pemeriksa`, `posyandu`, `dukun`, `gravida`, `paritas`, `abortus`, `hidup`, `hpht`, `hpl`, `persalinan_sebemulnya`, `bb`, `tb`, `buku_kia`, `riwayat_komplikasi`, `penyakit`, `persalinan_tgl`, `persalinan_penolong`, `persalinan_pendamping`, `persalinan_tempat`, `persalinan_transportasi`, `persalinan_pendonor`, `persalinan_kunjungan_rumah`, `persalinan_kondisi_rumah`, `persalinan_persedian`, `lila`, `fundus`, `hb`, `usia_kehamilan`, `ttd`) VALUES
('75ej8i10', 'bidan', 'eTEWYucqvD', NULL, '2023-08-05', '2023-08-05', 'bidan 1', 'sekarwangi', '-', 1, 0, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '0', '', '', '0000-00-00', '1', '1', '1', '1', '1', '', '', '', NULL, NULL, NULL, NULL, NULL),
('LWCzexYc', 'kader', 'JolOajuJEy', NULL, '2023-08-11', '2023-08-11', 'Kader', NULL, NULL, 2, 0, 0, 0, NULL, NULL, NULL, 70, 165, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, 55, 9, 4, '1'),
('mCERuoHc', 'kader', 'eTEWYucqvD', NULL, '2023-07-20', '2023-07-20', 'bidan 1', 'sekar wangi desa gelanggang', '-', 1, 0, 0, 0, '2023-04-03', '2023-01-12', '2018-12-01', 50, 156, '1', 'tidak ada', 'tidak ada', '2023-01-12', '1', '1', '1', '1', '1', 'Ya', 'baik', 'sedia', 60, 12, 12, 290, '0');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan_lansia`
--

CREATE TABLE `kunjungan_lansia` (
  `id` varchar(8) NOT NULL,
  `registrar` varchar(46) NOT NULL,
  `nama_pemeriksa` varchar(46) NOT NULL,
  `dibuat` datetime NOT NULL DEFAULT current_timestamp(),
  `lansia` varchar(8) NOT NULL,
  `bulan` date NOT NULL,
  `berat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kunjungan_lansia`
--

INSERT INTO `kunjungan_lansia` (`id`, `registrar`, `nama_pemeriksa`, `dibuat`, `lansia`, `bulan`, `berat`) VALUES
('Mex8FKdZ', 'kader', 'Kader', '2023-08-11 21:05:52', 'urxEMv3Q', '2023-08-01', 70),
('T1MoCs30', 'kader', 'Kader (sumarni)', '2023-07-20 11:58:14', 'iTmnpO6l', '2023-07-01', 50),
('WiAoSuoy', 'kader', 'Kader', '2023-09-18 12:54:43', 'iTmnpO6l', '2023-09-01', 45);

-- --------------------------------------------------------

--
-- Table structure for table `lansia`
--

CREATE TABLE `lansia` (
  `id` varchar(8) NOT NULL,
  `registrar` varchar(46) NOT NULL,
  `dibuat` datetime NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(46) NOT NULL,
  `alamat` varchar(22) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `estimasi_ttl` tinyint(1) NOT NULL DEFAULT 0,
  `nik` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lansia`
--

INSERT INTO `lansia` (`id`, `registrar`, `dibuat`, `nama`, `alamat`, `tanggal_lahir`, `estimasi_ttl`, `nik`) VALUES
('iTmnpO6l', 'kader', '2023-07-20 11:40:37', 'suciah', '52.03.01.2001', '1989-12-31', 0, '1234567891098765'),
('KkEVBmZE', 'kader', '2023-09-18 12:59:00', 'winda', '52.03.18.2001', '1989-12-31', 0, '6578906456637833'),
('urxEMv3Q', 'kader', '2023-08-11 21:04:15', 'Rabi\'ah', '52.03.18.2001', '1970-12-12', 0, '9862498264982640');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(39, '2023-06-17-053719', 'App\\Database\\Migrations\\Users', 'default', 'App', 1689824059, 1),
(40, '2023-06-17-125052', 'App\\Database\\Migrations\\Bumil', 'default', 'App', 1689824059, 1),
(41, '2023-06-30-120107', 'App\\Database\\Migrations\\PemeriksaanBumil', 'default', 'App', 1689824059, 1),
(42, '2023-07-04-050515', 'App\\Database\\Migrations\\Lansia', 'default', 'App', 1689824059, 1),
(43, '2023-07-04-051317', 'App\\Database\\Migrations\\KunjunganLansia', 'default', 'App', 1689824059, 1),
(44, '2023-07-05-061745', 'App\\Database\\Migrations\\Anak', 'default', 'App', 1689824059, 1),
(45, '2023-07-05-061800', 'App\\Database\\Migrations\\KunjunganAnak', 'default', 'App', 1689824059, 1),
(46, '2023-07-17-105721', 'App\\Database\\Migrations\\Tokens', 'default', 'App', 1689824059, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `email` varchar(46) NOT NULL,
  `token` varchar(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `expired` datetime NOT NULL DEFAULT current_timestamp(),
  `used` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `dibuat` datetime NOT NULL DEFAULT current_timestamp(),
  `registrar` varchar(46) DEFAULT NULL,
  `username` varchar(46) NOT NULL,
  `password` varchar(92) NOT NULL,
  `role` varchar(18) NOT NULL DEFAULT 'su',
  `nama_lengkap` varchar(46) DEFAULT NULL,
  `email` varchar(46) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `alamat` varchar(46) DEFAULT NULL,
  `photo` varchar(15) DEFAULT 'default.jpg',
  `faskes` varchar(92) DEFAULT NULL,
  `wilayah_kerja` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`dibuat`, `registrar`, `username`, `password`, `role`, `nama_lengkap`, `email`, `hp`, `alamat`, `photo`, `faskes`, `wilayah_kerja`) VALUES
('2023-07-20 11:34:25', NULL, 'admin', '$2y$10$7OiVf0Mr652/uFvA2RoqyezINwlD8ZwxcBXTbyVrN57n9phwx7CLW', 'admin', 'Admin', 'admin@mail.com', NULL, NULL, 'default.jpg', '', ''),
('2023-07-20 11:34:25', NULL, 'bidan', '$2y$10$eAkBnsLmXKo3sJ4OaSYTzeQfu25LChgf.3cWp9cqG8UQy1qPNiXEC', 'bidan', 'Bidan', 'bidan@mail.com', '322898989878', '52.03.01.2003', 'default.jpg', 'Rensing', '52.03.19.0000'),
('2023-07-20 11:34:25', NULL, 'kader', '$2y$10$oloG7RwbfdyMMcom.nG0Hucf3l2KfAdeQB2/KXLC7cFsOGD3BlrO6', 'kader', 'Kader', 'kader@mail.com', '056547467464', '52.03.18.2001', 'default.jpg', 'lepak', '52.03.18.2001'),
('2023-08-10 22:24:46', 'admin', 'sumarni', '$2y$10$kjXJI0GhkACslmtAnOLNeuaoixl6TftBM0RJRYyWVtH8qv1GYs2ba', 'kader', 'sumarni', 'sumarni@gmail.com', '098756439009', '52.03.18.2001', 'default.jpg', 'denggen', '52.03.18.2001');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id` varchar(13) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `path` varchar(150) DEFAULT NULL,
  `berlaku` tinyint(1) DEFAULT 1,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id`, `nama`, `level`, `path`, `berlaku`, `tahun`) VALUES
('52.03.00.0000', 'KAB. LOMBOK TIMUR', 2, NULL, 1, 2018),
('52.03.01.0000', 'Keruak', 3, NULL, 1, 2018),
('52.03.01.2001', 'Tanjung Luar', 4, NULL, 1, 2018),
('52.03.01.2002', 'Pijot', 4, NULL, 1, 2018),
('52.03.01.2003', 'Selebung Ketangga', 4, NULL, 1, 2018),
('52.03.01.2004', 'Sepit', 4, NULL, 1, 2018),
('52.03.01.2005', 'Batu Putik', 4, NULL, 1, 2018),
('52.03.01.2006', 'Senyiur', 4, NULL, 1, 2018),
('52.03.01.2007', 'Keruak', 4, NULL, 1, 2018),
('52.03.01.2008', 'Ketapang Raya', 4, NULL, 1, 2018),
('52.03.01.2009', 'Pijot Utara', 4, NULL, 1, 2018),
('52.03.01.2010', 'Dane Rase', 4, NULL, 1, 2018),
('52.03.01.2011', 'Ketangga Jeraeng', 4, NULL, 1, 2018),
('52.03.01.2012', 'Mendana Raya', 4, NULL, 1, 2018),
('52.03.01.2013', 'Setungkep Lingsar', 4, NULL, 1, 2018),
('52.03.01.2014', 'Montong Belae', 4, NULL, 1, 2018),
('52.03.01.2015', 'Pulau Maringkik', 4, NULL, 1, 2018),
('52.03.02.0000', 'Sakra', 3, NULL, 1, 2018),
('52.03.02.2001', 'Suwangi', 4, NULL, 1, 2018),
('52.03.02.2002', 'Sakra', 4, NULL, 1, 2018),
('52.03.02.2003', 'Kabar', 4, NULL, 1, 2018),
('52.03.02.2004', 'Rumbuk', 4, NULL, 1, 2018),
('52.03.02.2005', 'Keselet', 4, NULL, 1, 2018),
('52.03.02.2006', 'Sakra Selatan', 4, NULL, 1, 2018),
('52.03.02.2007', 'Rumbuk Timur', 4, NULL, 1, 2018),
('52.03.02.2008', 'Suwangi Timur', 4, NULL, 1, 2018),
('52.03.02.2009', 'Moyot', 4, NULL, 1, 2018),
('52.03.02.2010', 'Songak', 4, NULL, 1, 2018),
('52.03.02.2011', 'Peresak', 4, NULL, 1, 2018),
('52.03.02.2012', 'Kuang Baru', 4, NULL, 1, 2018),
('52.03.03.0000', 'Terara', 3, NULL, 1, 2018),
('52.03.03.2001', 'Jenggik', 4, NULL, 1, 2018),
('52.03.03.2002', 'Rarang', 4, NULL, 1, 2018),
('52.03.03.2003', 'Suradadi', 4, NULL, 1, 2018),
('52.03.03.2004', 'Santong', 4, NULL, 1, 2018),
('52.03.03.2005', 'Terara', 4, NULL, 1, 2018),
('52.03.03.2006', 'Sukadana', 4, NULL, 1, 2018),
('52.03.03.2007', 'Rarang Selatan', 4, NULL, 1, 2018),
('52.03.03.2008', 'Leming', 4, NULL, 1, 2018),
('52.03.03.2009', 'Lando', 4, NULL, 1, 2018),
('52.03.03.2010', 'Rarang Tengah', 4, NULL, 1, 2018),
('52.03.03.2011', 'Embung Raja', 4, NULL, 1, 2018),
('52.03.03.2012', 'Selagik', 4, NULL, 1, 2018),
('52.03.03.2013', 'Embung Kandong', 4, NULL, 1, 2018),
('52.03.03.2014', 'Kalianyar', 4, NULL, 1, 2018),
('52.03.03.2015', 'Rarang Batas', 4, NULL, 1, 2018),
('52.03.03.2016', 'Pandan Duri', 4, NULL, 1, 2018),
('52.03.04.0000', 'Sikur', 3, NULL, 1, 2018),
('52.03.04.2001', 'Semaya', 4, NULL, 1, 2018),
('52.03.04.2002', 'Sikur', 4, NULL, 1, 2018),
('52.03.04.2003', 'Montong Baan', 4, NULL, 1, 2018),
('52.03.04.2004', 'Loyok', 4, NULL, 1, 2018),
('52.03.04.2005', 'Kota Raja', 4, NULL, 1, 2018),
('52.03.04.2006', 'Tete Batu', 4, NULL, 1, 2018),
('52.03.04.2007', 'Kembang Kuning', 4, NULL, 1, 2018),
('52.03.04.2008', 'Montong Baan Selatan', 4, NULL, 1, 2018),
('52.03.04.2009', 'Gelora', 4, NULL, 1, 2018),
('52.03.04.2010', 'Darmasari', 4, NULL, 1, 2018),
('52.03.04.2011', 'Tetebatu Selatan', 4, NULL, 1, 2018),
('52.03.04.2012', 'Jeruk Manis', 4, NULL, 1, 2018),
('52.03.04.2013', 'Sikur Selatan', 4, NULL, 1, 2018),
('52.03.04.2014', 'Sikur Barat', 4, NULL, 1, 2018),
('52.03.05.0000', 'Masbagik', 3, NULL, 1, 2018),
('52.03.05.2001', 'Kesik', 4, NULL, 1, 2018),
('52.03.05.2002', 'Paokmotong', 4, NULL, 1, 2018),
('52.03.05.2003', 'Masbagik Selatan', 4, NULL, 1, 2018),
('52.03.05.2004', 'Masbagik Timur', 4, NULL, 1, 2018),
('52.03.05.2005', 'Masbagik Utara', 4, NULL, 1, 2018),
('52.03.05.2006', 'Danger', 4, NULL, 1, 2018),
('52.03.05.2007', 'Lendang Nangka', 4, NULL, 1, 2018),
('52.03.05.2008', 'Masbagik Utara Baru', 4, NULL, 1, 2018),
('52.03.05.2009', 'Lendang Nangka Utara', 4, NULL, 1, 2018),
('52.03.05.2010', 'Kumbang', 4, NULL, 1, 2018),
('52.03.06.0000', 'Sukamulia', 3, NULL, 1, 2018),
('52.03.06.2001', 'Setanggor', 4, NULL, 1, 2018),
('52.03.06.2002', 'Jantuk', 4, NULL, 1, 2018),
('52.03.06.2003', 'Padamara', 4, NULL, 1, 2018),
('52.03.06.2004', 'Dasan Lekong', 4, NULL, 1, 2018),
('52.03.06.2005', 'Sukamulia', 4, NULL, 1, 2018),
('52.03.06.2006', 'Paok Pampang', 4, NULL, 1, 2018),
('52.03.06.2007', 'Sukamulia Timur', 4, NULL, 1, 2018),
('52.03.06.2008', 'Nyiur Tebel', 4, NULL, 1, 2018),
('52.03.06.2009', 'Setanggor Selatan', 4, NULL, 1, 2018),
('52.03.07.0000', 'Selong', 3, NULL, 1, 2018),
('52.03.07.1001', 'Pancor', 4, NULL, 1, 2018),
('52.03.07.1002', 'Selong', 4, NULL, 1, 2018),
('52.03.07.1003', 'Kelayu Selatan', 4, NULL, 1, 2018),
('52.03.07.1004', 'Denggen', 4, NULL, 1, 2018),
('52.03.07.1005', 'Sekarteja', 4, NULL, 1, 2018),
('52.03.07.1006', 'Majidi', 4, NULL, 1, 2018),
('52.03.07.1007', 'Rakam', 4, NULL, 1, 2018),
('52.03.07.1008', 'Sandu Baya', 4, NULL, 1, 2018),
('52.03.07.1009', 'Kembang Sari', 4, NULL, 1, 2018),
('52.03.07.1010', 'Kelayu Utara', 4, NULL, 1, 2018),
('52.03.07.1011', 'Kelaju Jorong', 4, NULL, 1, 2018),
('52.03.07.2012', 'Danggen Timur', 4, NULL, 1, 2018),
('52.03.08.0000', 'Pringgabaya', 3, NULL, 1, 2018),
('52.03.08.2001', 'Bagik Papan', 4, NULL, 1, 2018),
('52.03.08.2002', 'Apit Aik', 4, NULL, 1, 2018),
('52.03.08.2003', 'Kerumut', 4, NULL, 1, 2018),
('52.03.08.2004', 'Pohgading', 4, NULL, 1, 2018),
('52.03.08.2005', 'Batuyang', 4, NULL, 1, 2018),
('52.03.08.2006', 'Pringgabaya', 4, NULL, 1, 2018),
('52.03.08.2007', 'Labuhan Lombok', 4, NULL, 1, 2018),
('52.03.08.2008', 'Pringgabaya Utara', 4, NULL, 1, 2018),
('52.03.08.2009', 'Pohgading Timur', 4, NULL, 1, 2018),
('52.03.08.2010', 'Teko', 4, NULL, 1, 2018),
('52.03.08.2011', 'Anggaraksa', 4, NULL, 1, 2018),
('52.03.08.2012', 'Tanak Gadang', 4, NULL, 1, 2018),
('52.03.08.2013', 'Gunung Malang', 4, NULL, 1, 2018),
('52.03.08.2014', 'Seruni Mumbul', 4, NULL, 1, 2018),
('52.03.08.2015', 'Telaga Waru', 4, NULL, 1, 2018),
('52.03.09.0000', 'Aikmel', 3, NULL, 1, 2018),
('52.03.09.2001', 'Lenek', 4, NULL, 1, 2018),
('52.03.09.2002', 'Aikmel', 4, NULL, 1, 2018),
('52.03.09.2003', 'Kalijaga', 4, NULL, 1, 2018),
('52.03.09.2004', 'Kembang Kerang', 4, NULL, 1, 2018),
('52.03.09.2005', 'Lenek Lauk', 4, NULL, 1, 2018),
('52.03.09.2006', 'Lenek Daya', 4, NULL, 1, 2018),
('52.03.09.2007', 'Aikmel Utara', 4, NULL, 1, 2018),
('52.03.09.2008', 'Kalijaga Timur', 4, NULL, 1, 2018),
('52.03.09.2009', 'Kalijaga Selatan', 4, NULL, 1, 2018),
('52.03.09.2010', 'Aikmel Barat', 4, NULL, 1, 2018),
('52.03.09.2011', 'Kembang Kerang Daya', 4, NULL, 1, 2018),
('52.03.09.2012', 'Lenek Baru', 4, NULL, 1, 2018),
('52.03.09.2013', 'Lenek Pasiraman', 4, NULL, 1, 2018),
('52.03.09.2014', 'Toya', 4, NULL, 1, 2018),
('52.03.09.2015', 'Lenek Kali Bambang', 4, NULL, 1, 2018),
('52.03.09.2016', 'Lenek Ramban Biak', 4, NULL, 1, 2018),
('52.03.09.2017', 'Sukarema', 4, NULL, 1, 2018),
('52.03.09.2018', 'Kalijaga Baru', 4, NULL, 1, 2018),
('52.03.09.2019', 'Kalijaga Tengah', 4, NULL, 1, 2018),
('52.03.09.2020', 'Bagik Nyaka Santri', 4, NULL, 1, 2018),
('52.03.09.2021', 'Aik Prapa', 4, NULL, 1, 2018),
('52.03.09.2022', 'Lenek Duren', 4, NULL, 1, 2018),
('52.03.09.2023', 'Aikmel Timur', 4, NULL, 1, 2018),
('52.03.09.2024', 'Keroya', 4, NULL, 1, 2018),
('52.03.10.0000', 'Sambelia', 3, NULL, 1, 2018),
('52.03.10.2001', 'Obel-obel', 4, NULL, 1, 2018),
('52.03.10.2002', 'Belanting', 4, NULL, 1, 2018),
('52.03.10.2003', 'Sambalia', 4, NULL, 1, 2018),
('52.03.10.2004', 'Labuhan Pandan', 4, NULL, 1, 2018),
('52.03.10.2005', 'Sugian', 4, NULL, 1, 2018),
('52.03.10.2006', 'Darakunci', 4, NULL, 1, 2018),
('52.03.10.2007', 'Bagik Manis', 4, NULL, 1, 2018),
('52.03.10.2008', 'Dadap', 4, NULL, 1, 2018),
('52.03.10.2009', 'Madayin', 4, NULL, 1, 2018),
('52.03.10.2010', 'Senanggalih', 4, NULL, 1, 2018),
('52.03.10.2011', 'Padak Guar', 4, NULL, 1, 2018),
('52.03.11.0000', 'Montong Gading', 3, NULL, 1, 2018),
('52.03.11.2001', 'Pringga Jurang', 4, NULL, 1, 2018),
('52.03.11.2002', 'Montong Betok', 4, NULL, 1, 2018),
('52.03.11.2003', 'Kilang', 4, NULL, 1, 2018),
('52.03.11.2004', 'Perian', 4, NULL, 1, 2018),
('52.03.11.2005', 'Jenggik Utara', 4, NULL, 1, 2018),
('52.03.11.2006', 'Pringgajurang Utara', 4, NULL, 1, 2018),
('52.03.11.2007', 'Pesanggrahan', 4, NULL, 1, 2018),
('52.03.11.2008', 'Lendang Belo', 4, NULL, 1, 2018),
('52.03.12.0000', 'Pringgasela', 3, NULL, 1, 2018),
('52.03.12.2001', 'Rempung', 4, NULL, 1, 2018),
('52.03.12.2002', 'Pringgasela', 4, NULL, 1, 2018),
('52.03.12.2003', 'Jurit', 4, NULL, 1, 2018),
('52.03.12.2004', 'Pengadangan', 4, NULL, 1, 2018),
('52.03.12.2005', 'Aik Dewa', 4, NULL, 1, 2018),
('52.03.12.2006', 'Jurit Baru', 4, NULL, 1, 2018),
('52.03.12.2007', 'Pringgasela Selatan', 4, NULL, 1, 2018),
('52.03.12.2008', 'Pengadangan Barat', 4, NULL, 1, 2018),
('52.03.12.2009', 'Timbanuh', 4, NULL, 1, 2018),
('52.03.12.2010', 'Pringgasela Timur', 4, NULL, 1, 2018),
('52.03.13.0000', 'Suralaga', 3, NULL, 1, 2018),
('52.03.13.2001', 'Anjani', 4, NULL, 1, 2018),
('52.03.13.2002', 'Tebaban', 4, NULL, 1, 2018),
('52.03.13.2003', 'Kerongkong', 4, NULL, 1, 2018),
('52.03.13.2004', 'Bagik Payung', 4, NULL, 1, 2018),
('52.03.13.2005', 'Suralaga', 4, NULL, 1, 2018),
('52.03.13.2006', 'Bagik Payung Selatan', 4, NULL, 1, 2018),
('52.03.13.2007', 'Tumbuh Mulia', 4, NULL, 1, 2018),
('52.03.13.2008', 'Dasan Borok', 4, NULL, 1, 2018),
('52.03.13.2009', 'Gerung Permai', 4, NULL, 1, 2018),
('52.03.13.2010', 'Dames Damai', 4, NULL, 1, 2018),
('52.03.13.2011', 'Bagik Payung Timur', 4, NULL, 1, 2018),
('52.03.13.2012', 'Waringin', 4, NULL, 1, 2018),
('52.03.13.2013', 'Gapuk', 4, NULL, 1, 2018),
('52.03.13.2014', 'Bintang Rinjani', 4, NULL, 1, 2018),
('52.03.13.2015', 'Paok Lombok', 4, NULL, 1, 2018),
('52.03.14.0000', 'Wanasaba', 3, NULL, 1, 2018),
('52.03.14.2001', 'Mamben Daya', 4, NULL, 1, 2018),
('52.03.14.2002', 'Mamben Lauk', 4, NULL, 1, 2018),
('52.03.14.2003', 'Wanasaba', 4, NULL, 1, 2018),
('52.03.14.2004', 'Karang Baru', 4, NULL, 1, 2018),
('52.03.14.2005', 'Bebidas', 4, NULL, 1, 2018),
('52.03.14.2006', 'Tembeng Putik', 4, NULL, 1, 2018),
('52.03.14.2007', 'Wanasaba Lauk', 4, NULL, 1, 2018),
('52.03.14.2008', 'Beriri Jarak', 4, NULL, 1, 2018),
('52.03.14.2009', 'Bandok', 4, NULL, 1, 2018),
('52.03.14.2010', 'Mamben Baru', 4, NULL, 1, 2018),
('52.03.14.2011', 'Otak Rarangan', 4, NULL, 1, 2018),
('52.03.14.2012', 'Jineng', 4, NULL, 1, 2018),
('52.03.14.2013', 'Wanasaba Daya', 4, NULL, 1, 2018),
('52.03.14.2014', 'Karang Baru Timur', 4, NULL, 1, 2018),
('52.03.15.0000', 'Sembalun', 3, NULL, 1, 2018),
('52.03.15.2001', 'Sembalun Bumbung', 4, NULL, 1, 2018),
('52.03.15.2002', 'Sembalun Lawang', 4, NULL, 1, 2018),
('52.03.15.2003', 'Sajang', 4, NULL, 1, 2018),
('52.03.15.2004', 'Bilok Petung', 4, NULL, 1, 2018),
('52.03.15.2005', 'Sembalun', 4, NULL, 1, 2018),
('52.03.15.2006', 'Sembalun Timba Gading', 4, NULL, 1, 2018),
('52.03.16.0000', 'Suwela', 3, NULL, 1, 2018),
('52.03.16.2001', 'Selaparang', 4, NULL, 1, 2018),
('52.03.16.2002', 'Ketangga', 4, NULL, 1, 2018),
('52.03.16.2003', 'Suntalangu', 4, NULL, 1, 2018),
('52.03.16.2004', 'Suela', 4, NULL, 1, 2018),
('52.03.16.2005', 'Sapit', 4, NULL, 1, 2018),
('52.03.16.2006', 'Perigi', 4, NULL, 1, 2018),
('52.03.16.2007', 'Mekar Sari', 4, NULL, 1, 2018),
('52.03.16.2008', 'Puncak Jeringo', 4, NULL, 1, 2018),
('52.03.17.0000', 'Labuhan Haji', 3, NULL, 1, 2018),
('52.03.17.1004', 'Tanjung', 4, NULL, 1, 2018),
('52.03.17.1005', 'Suryawangi', 4, NULL, 1, 2018),
('52.03.17.1007', 'Ijobalit', 4, NULL, 1, 2018),
('52.03.17.1012', 'Geres', 4, NULL, 1, 2018),
('52.03.17.2001', 'Labuhan Haji', 4, NULL, 1, 2018),
('52.03.17.2002', 'Peneda Gandor', 4, NULL, 1, 2018),
('52.03.17.2003', 'Teros', 4, NULL, 1, 2018),
('52.03.17.2006', 'Korleko', 4, NULL, 1, 2018),
('52.03.17.2008', 'Kertasari', 4, NULL, 1, 2018),
('52.03.17.2009', 'Tirtanadi', 4, NULL, 1, 2018),
('52.03.17.2010', 'Banjarsari', 4, NULL, 1, 2018),
('52.03.17.2011', 'Korleko Selatan', 4, NULL, 1, 2018),
('52.03.18.0000', 'Sakra Timur', 3, NULL, 1, 2018),
('52.03.18.2001', 'Gelanggang', 4, NULL, 1, 2018),
('52.03.18.2002', 'Surabaya', 4, NULL, 1, 2018),
('52.03.18.2003', 'Lepak', 4, NULL, 1, 2018),
('52.03.18.2004', 'Gereneng', 4, NULL, 1, 2018),
('52.03.18.2005', 'Montong Tangi', 4, NULL, 1, 2018),
('52.03.18.2006', 'Menceh', 4, NULL, 1, 2018),
('52.03.18.2007', 'Lepak Timur', 4, NULL, 1, 2018),
('52.03.18.2008', 'Surabaya Utara', 4, NULL, 1, 2018),
('52.03.18.2009', 'Gereneng Timur', 4, NULL, 1, 2018),
('52.03.18.2010', 'Lenting', 4, NULL, 1, 2018),
('52.03.19.0000', 'Sakra Barat', 3, NULL, 1, 2018),
('52.03.19.2001', 'Sukarara', 4, NULL, 1, 2018),
('52.03.19.2002', 'Gunung Rajak', 4, NULL, 1, 2018),
('52.03.19.2003', 'Rensing', 4, NULL, 1, 2018),
('52.03.19.2004', 'Bungtiang', 4, NULL, 1, 2018),
('52.03.19.2005', 'Pengkelak Mas', 4, NULL, 1, 2018),
('52.03.19.2006', 'Borok Toyang', 4, NULL, 1, 2018),
('52.03.19.2007', 'Rensing Raya', 4, NULL, 1, 2018),
('52.03.19.2008', 'Pematung', 4, NULL, 1, 2018),
('52.03.19.2009', 'Jerogunung', 4, NULL, 1, 2018),
('52.03.19.2010', 'Pejaring', 4, NULL, 1, 2018),
('52.03.19.2011', 'Boyemare', 4, NULL, 1, 2018),
('52.03.19.2012', 'Montong Beter', 4, NULL, 1, 2018),
('52.03.19.2013', 'Mengkuru', 4, NULL, 1, 2018),
('52.03.19.2014', 'Gadungmas', 4, NULL, 1, 2018),
('52.03.19.2015', 'Kembang Are Sampai', 4, NULL, 1, 2018),
('52.03.19.2016', 'Rensing Bat', 4, NULL, 1, 2018),
('52.03.19.2017', 'Tanak Kaken', 4, NULL, 1, 2018),
('52.03.19.2018', 'Gerisak Semanggeleng', 4, NULL, 1, 2018),
('52.03.20.0000', 'Jerowaru', 3, NULL, 1, 2018),
('52.03.20.2001', 'Batu Nampar', 4, NULL, 1, 2018),
('52.03.20.2002', 'Sukaraja', 4, NULL, 1, 2018),
('52.03.20.2003', 'Jerowaru', 4, NULL, 1, 2018),
('52.03.20.2004', 'Pemongkong', 4, NULL, 1, 2018),
('52.03.20.2005', 'Sekaroh', 4, NULL, 1, 2018),
('52.03.20.2006', 'Pandan Wangi', 4, NULL, 1, 2018),
('52.03.20.2007', 'Wakan', 4, NULL, 1, 2018),
('52.03.20.2008', 'Kwang Rundun', 4, NULL, 1, 2018),
('52.03.20.2009', 'Ekas Buana', 4, NULL, 1, 2018),
('52.03.20.2010', 'Sepapan', 4, NULL, 1, 2018),
('52.03.20.2011', 'Seriwe', 4, NULL, 1, 2018),
('52.03.20.2012', 'Pene', 4, NULL, 1, 2018),
('52.03.20.2013', 'Batunampar Selatan', 4, NULL, 1, 2018),
('52.03.20.2014', 'Sukadamai', 4, NULL, 1, 2018),
('52.03.20.2015', 'Pare Mas', 4, NULL, 1, 2018);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bumil`
--
ALTER TABLE `bumil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kunjungan_anak`
--
ALTER TABLE `kunjungan_anak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kunjungan_anak_anak_foreign` (`anak`);

--
-- Indexes for table `kunjungan_bumil`
--
ALTER TABLE `kunjungan_bumil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kunjungan_bumil_ibu_foreign` (`ibu`);

--
-- Indexes for table `kunjungan_lansia`
--
ALTER TABLE `kunjungan_lansia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kunjungan_lansia_lansia_foreign` (`lansia`);

--
-- Indexes for table `lansia`
--
ALTER TABLE `lansia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `hp` (`hp`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kunjungan_anak`
--
ALTER TABLE `kunjungan_anak`
  ADD CONSTRAINT `kunjungan_anak_anak_foreign` FOREIGN KEY (`anak`) REFERENCES `anak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kunjungan_bumil`
--
ALTER TABLE `kunjungan_bumil`
  ADD CONSTRAINT `kunjungan_bumil_ibu_foreign` FOREIGN KEY (`ibu`) REFERENCES `bumil` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kunjungan_lansia`
--
ALTER TABLE `kunjungan_lansia`
  ADD CONSTRAINT `kunjungan_lansia_lansia_foreign` FOREIGN KEY (`lansia`) REFERENCES `lansia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
