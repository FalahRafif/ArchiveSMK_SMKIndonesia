-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Apr 09, 2019 at 06:48 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkindonesia`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `datasiswa14` ()  SELECT siswa.nis, siswa.nama_siswa, jurusan.nama_jurusan, kelas.nama_kelas, nilai.na
FROM siswa, jurusan,kelas, nilai
WHERE siswa.nis=nilai.nis
AND jurusan.kode_jurusan=nilai.kode_jurusan
AND kelas.kode_kelas=nilai.kode_kelas
AND na<70$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `fhitna` (`tugas` DOUBLE, `uts` DOUBLE, `uas` DOUBLE) RETURNS DOUBLE RETURN ((tugas+uts+uas)/3)$$

CREATE DEFINER=`root`@`localhost` FUNCTION `fjmlsiswa` (`kota` VARCHAR(100)) RETURNS INT(11) RETURN (SELECT COUNT(*) FROM siswa WHERE alamat=kota)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `kode_guru` varchar(5) NOT NULL,
  `nama_guru` varchar(25) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`kode_guru`, `nama_guru`, `jk`, `alamat`) VALUES
('g0001', 'Abdul Latif, S.Pd, MM', 'Laki-Laki', 'Bandung'),
('g0002', 'Budi Santoso, ST', 'Laki-Laki', 'Jakarta'),
('g0003', 'Chollidah Istiqomah, S.Si', 'Perempuan', 'Bandung'),
('g0004', 'Dian Maharani, S.Ag', 'Perempuan', 'Cimahi');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` varchar(5) NOT NULL,
  `nama_jurusan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `nama_jurusan`) VALUES
('j0001', 'Teknik Kendaraan Ringan'),
('j0002', 'Rekayasa Perangkat Lunak'),
('j0003', 'Akomodasi Perhotelan'),
('j0004', 'Akuntansi Lembaga');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL,
  `tingkat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `nama_kelas`, `tingkat`) VALUES
('k0001', '11 TKR', '2'),
('k0002', '11 RPL', '2'),
('k0003', '11 ApH', '2'),
('k0004', '11 AK', '2');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kode_mapel` varchar(5) NOT NULL,
  `nama_mapel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`kode_mapel`, `nama_mapel`) VALUES
('mp001', 'Pendidikan Agama Islam'),
('mp002', 'Pend Kewarganegaraan'),
('mp003', 'Bahasa Inggris'),
('mp004', 'Matematika');

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `kode_mengajar` varchar(5) NOT NULL,
  `kode_jurusan` varchar(5) NOT NULL,
  `kode_kelas` varchar(5) NOT NULL,
  `kode_guru` varchar(5) NOT NULL,
  `kode_mapel` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`kode_mengajar`, `kode_jurusan`, `kode_kelas`, `kode_guru`, `kode_mapel`) VALUES
('m0001', 'j0001', 'k0001', 'g0001', 'mp001'),
('m0007', 'j0002', 'k0002', 'g0001', 'mp001'),
('m0002', 'j0002', 'k0002', 'g0002', 'mp002'),
('m0003', 'j0003', 'k0003', 'g0004', 'mp004'),
('m0006', 'j0004', 'k0003', 'g0004', 'mp003'),
('m0005', 'j0004', 'k0004', 'g0004', 'mp003'),
('m0004', 'j0004', 'k0004', 'g0004', 'mp004');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `kode_nilai` varchar(5) NOT NULL,
  `kode_jurusan` varchar(5) NOT NULL,
  `kode_kelas` varchar(5) NOT NULL,
  `kode_guru` varchar(5) NOT NULL,
  `kode_mapel` varchar(5) NOT NULL,
  `nis` varchar(5) NOT NULL,
  `tugas` double NOT NULL,
  `uts` double NOT NULL,
  `uas` double NOT NULL,
  `na` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`kode_nilai`, `kode_jurusan`, `kode_kelas`, `kode_guru`, `kode_mapel`, `nis`, `tugas`, `uts`, `uas`, `na`) VALUES
('n0001', 'j0001', 'k0001', 'g0001', 'mp001', 's0001', 65, 65, 65, 65),
('n0002', 'j0002', 'k0002', 'g0002', 'mp002', 's0002', 80, 90, 80, 95),
('n0003', 'j0001', 'k0001', 'g0004', 'mp004', 's0001', 60, 60, 60, 60),
('n0004', 'j0004', 'k0004', 'g0004', 'mp004', 's0002', 60, 60, 60, 60),
('n0005', 'j0001', 'k0001', 'g0001', 'mp002', 's0001', 65, 65, 65, 65),
('n0007', 'j0001', 'k0001', 'g0001', 'mp001', 's0002', 65, 65, 65, 65),
('n0009', 'j0001', 'k0002', 'g0002', 'mp002', 's0005', 65, 65, 65, 65);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(5) NOT NULL,
  `nama_siswa` varchar(25) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `jk`, `alamat`) VALUES
('s0001', 'Andre Barliansyah', 'Laki-Laki', 'Bandung'),
('s0002', 'Belfy Triana', 'Perempuan', 'Buah Batu'),
('s0003', 'Chandra Wijaya', 'Laki-Laki', 'Margahayu'),
('s0004', 'Dany Saputra', 'Laki-Laki', 'Dago'),
('s0005', 'Fitri', 'Perempuan', 'Sumedang');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vnilaisiswa`
-- (See below for the actual view)
--
CREATE TABLE `vnilaisiswa` (
`nis` varchar(5)
,`nama_siswa` varchar(25)
,`nama_jurusan` varchar(25)
,`nama_kelas` varchar(25)
,`tugas` double
,`uts` double
,`uas` double
,`na` double
);

-- --------------------------------------------------------

--
-- Structure for view `vnilaisiswa`
--
DROP TABLE IF EXISTS `vnilaisiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vnilaisiswa`  AS  select `siswa`.`nis` AS `nis`,`siswa`.`nama_siswa` AS `nama_siswa`,`jurusan`.`nama_jurusan` AS `nama_jurusan`,`kelas`.`nama_kelas` AS `nama_kelas`,`nilai`.`tugas` AS `tugas`,`nilai`.`uts` AS `uts`,`nilai`.`uas` AS `uas`,`fhitna`(`nilai`.`tugas`,`nilai`.`uts`,`nilai`.`uas`) AS `na` from (((`siswa` join `jurusan`) join `kelas`) join `nilai`) where ((`siswa`.`nis` = `nilai`.`nis`) and (`jurusan`.`kode_jurusan` = `nilai`.`kode_jurusan`) and (`kelas`.`kode_kelas` = `nilai`.`kode_kelas`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`kode_guru`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`kode_mengajar`),
  ADD UNIQUE KEY `kode_kelas` (`kode_kelas`,`kode_mapel`) USING BTREE,
  ADD UNIQUE KEY `kode_guru` (`kode_guru`,`kode_kelas`,`kode_mapel`) USING BTREE,
  ADD UNIQUE KEY `kode_mapel` (`kode_mapel`,`kode_kelas`) USING BTREE,
  ADD UNIQUE KEY `kode_jurusan` (`kode_jurusan`,`kode_kelas`,`kode_guru`,`kode_mapel`) USING BTREE;

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`kode_nilai`),
  ADD UNIQUE KEY `kode_jurusan` (`kode_jurusan`,`kode_kelas`,`kode_guru`,`kode_mapel`,`nis`) USING BTREE,
  ADD UNIQUE KEY `kode_kelas` (`kode_kelas`,`nis`,`kode_mapel`) USING BTREE,
  ADD UNIQUE KEY `kode_guru` (`kode_guru`,`nis`,`kode_mapel`) USING BTREE,
  ADD UNIQUE KEY `kode_mapel` (`kode_mapel`,`kode_kelas`,`nis`) USING BTREE,
  ADD UNIQUE KEY `nis` (`nis`,`kode_guru`,`kode_mapel`) USING BTREE;

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `mengajar_ibfk_1` FOREIGN KEY (`kode_jurusan`) REFERENCES `jurusan` (`kode_jurusan`),
  ADD CONSTRAINT `mengajar_ibfk_2` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`),
  ADD CONSTRAINT `mengajar_ibfk_3` FOREIGN KEY (`kode_guru`) REFERENCES `guru` (`kode_guru`),
  ADD CONSTRAINT `mengajar_ibfk_4` FOREIGN KEY (`kode_mapel`) REFERENCES `mapel` (`kode_mapel`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`kode_jurusan`) REFERENCES `mengajar` (`kode_jurusan`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`kode_kelas`) REFERENCES `mengajar` (`kode_kelas`),
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`kode_guru`) REFERENCES `mengajar` (`kode_guru`),
  ADD CONSTRAINT `nilai_ibfk_4` FOREIGN KEY (`kode_mapel`) REFERENCES `mengajar` (`kode_mapel`),
  ADD CONSTRAINT `nilai_ibfk_5` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
