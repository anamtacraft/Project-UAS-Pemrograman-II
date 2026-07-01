-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2026 at 05:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kehadiran_siswa2`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(100) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `no_telp`, `alamat`) VALUES
(1, 'Budi Santoso', '081234567891', 'Jl. Pendidikan No.1'),
(2, 'Siti Nurhaliza', '081234567892', 'Jl. Pendidikan No.2'),
(3, 'Andi Saputra', '081234567893', 'Jl. Pendidikan No.3'),
(4, 'Rina Marlina', '081234567894', 'Jl. Pendidikan No.4'),
(5, 'Ahmad Hidayat', '081234567895', 'Jl. Pendidikan No.5'),
(6, 'Dewi Lestari', '081234567896', 'Jl. Pendidikan No.6');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`id_kehadiran`, `nama_siswa`, `tanggal`, `status`) VALUES
(12, 'Ahmad Fauzan', '2026-07-01', 'Hadir'),
(13, 'Siti Aisyah', '2026-07-01', 'Hadir'),
(14, 'Muhammad Rizky', '2026-07-01', 'Alpha'),
(15, 'Nabila Putri', '2026-07-01', 'Hadir'),
(16, 'Ahmad Fauzan', '2026-07-01', 'Hadir'),
(17, 'Siti Aisyah', '2026-07-01', 'Hadir'),
(18, 'Muhammad Rizky', '2026-07-01', 'Hadir'),
(19, 'Nabila Putri', '2026-07-01', 'Izin'),
(20, 'Fajar Ramadhan', '2026-07-01', 'Hadir'),
(21, 'Aulia Zahra', '2026-07-01', 'Hadir'),
(22, 'Rafi Pratama', '2026-07-01', 'Sakit'),
(23, 'Nadya Safitri', '2026-07-01', 'Hadir'),
(24, 'Bagas Saputra', '2026-07-01', 'Hadir'),
(25, 'Putri Maharani', '2026-07-01', 'Hadir'),
(26, 'Dimas Prakoso', '2026-07-01', 'Alpha'),
(27, 'Salma Nuraini', '2026-07-01', 'Hadir'),
(28, 'Aditiya Maulana', '2026-07-01', 'Hadir'),
(29, 'Intan Permata', '2026-07-01', 'Hadir'),
(30, 'Reza Maulana', '2026-07-01', 'Hadir'),
(31, 'Syifa Rahma', '2026-07-01', 'Hadir'),
(32, 'Farhan Akbar', '2026-07-01', 'Hadir'),
(33, 'Rania Putri', '2026-07-01', 'Hadir'),
(34, 'Yoga Prasetyo', '2026-07-01', 'Hadir'),
(35, 'Nisa Khairunnisa', '2026-07-01', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `rekap_kehadiran`
--

CREATE TABLE `rekap_kehadiran` (
  `id_rekap` int(11) NOT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL,
  `hadir` int(11) DEFAULT NULL,
  `izin` int(11) DEFAULT NULL,
  `sakit` int(11) DEFAULT NULL,
  `alpha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekap_kehadiran`
--

INSERT INTO `rekap_kehadiran` (`id_rekap`, `nama_siswa`, `hadir`, `izin`, `sakit`, `alpha`) VALUES
(1, 'Ahmad Fauzan', 18, 1, 1, 0),
(2, 'Siti Aisyah', 17, 2, 1, 0),
(3, 'Muhammad Rizky', 16, 1, 3, 0),
(4, 'Nabila Putri', 20, 0, 0, 0),
(5, 'Dimas Pratama', 15, 1, 2, 2),
(6, 'Rina Oktavia', 19, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `jenis_kelamin`, `alamat`, `kelas`) VALUES
('24001', 'Ahmad Fauzan', 'Laki-Laki', 'Jl. Melati No. 10', '5A'),
('24002', 'Siti Aisyah', 'Perempuan', 'Jl. Mawar No. 15', '5A'),
('24003', 'Muhammad Rizky', 'Laki-Laki', 'Jl. Kenanga No. 5', '5A'),
('24004', 'Nabila Putri', 'Perempuan', 'Jl. Anggrek No. 20', '5A'),
('24005', 'Dimas Pratama', 'Laki-Laki', 'Jl. Flamboyan No. 7', '5A'),
('24006', 'Rina Oktavia', 'Perempuan', 'Jl. Dahlia No. 8', '5A'),
('24007', 'Fajar Ramadhan', 'Laki-Laki', 'Jl. Teratai No. 3', '5A'),
('24008', 'Aulia Rahma', 'Perempuan', 'Jl. Cempaka No. 18', '5A'),
('24009', 'Bagas Saputra', 'Laki-Laki', 'Jl. Sakura No. 21', '5A'),
('24010', 'Nadya Safitri', 'Perempuan', 'Jl. Kamboja No. 12', '5A'),
('240501', 'Ahmad Fauzan', 'Laki-laki', 'Jl. Melati No. 12', '5A'),
('240502', 'Siti Aisyah', 'Perempuan', 'Jl. Mawar No. 8', '5A'),
('240503', 'Muhammad Rizky', 'Laki-laki', 'Jl. Kenanga No. 5', '5A'),
('240504', 'Nabila Putri', 'Perempuan', 'Jl. Anggrek No. 10', '5A'),
('240505', 'Fajar Ramadhan', 'Laki-laki', 'Jl. Dahlia No. 3', '5A'),
('240506', 'Aulia Zahra', 'Perempuan', 'Jl. Cempaka No. 6', '5A'),
('240507', 'Rafi Pratama', 'Laki-laki', 'Jl. Flamboyan No. 15', '5A'),
('240508', 'Nadya Safitri', 'Perempuan', 'Jl. Teratai No. 7', '5A'),
('240509', 'Bagas Saputra', 'Laki-laki', 'Jl. Wijaya Kusuma No. 11', '5A'),
('240510', 'Putri Maharani', 'Perempuan', 'Jl. Bougenville No. 14', '5A'),
('240511', 'Dimas Prakoso', 'Laki-laki', 'Jl. Kamboja No. 9', '5A'),
('240512', 'Salma Nuraini', 'Perempuan', 'Jl. Sakura No. 2', '5A'),
('240513', 'Aditiya Maulana', 'Laki-laki', 'Jl. Kenari No. 18', '5A'),
('240514', 'Intan Permata', 'Perempuan', 'Jl. Elang No. 4', '5A'),
('240515', 'Reza Maulana', 'Laki-laki', 'Jl. Garuda No. 20', '5A'),
('240516', 'Syifa Rahma', 'Perempuan', 'Jl. Pinus No. 13', '5A'),
('240517', 'Farhan Akbar', 'Laki-laki', 'Jl. Mangga No. 16', '5A'),
('240518', 'Rania Putri', 'Perempuan', 'Jl. Rambutan No. 1', '5A'),
('240519', 'Yoga Prasetyo', 'Laki-laki', 'Jl. Durian No. 22', '5A'),
('240520', 'Nisa Khairunnisa', 'Perempuan', 'Jl. Jambu No. 5', '5A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin123', 'Admin'),
(2, 'guru', 'guru123', 'Guru'),
(5, 'anamta', '123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `rekap_kehadiran`
--
ALTER TABLE `rekap_kehadiran`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rekap_kehadiran`
--
ALTER TABLE `rekap_kehadiran`
  MODIFY `id_rekap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
