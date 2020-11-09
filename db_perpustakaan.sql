-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 Des 2019 pada 00.24
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `nis` int(6) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`nis`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `kelas`) VALUES
(180810, 'Yoga Widianto', 'Tegal', '1997-03-19', 'Laki-laki', '8B'),
(190701, 'Dadi Setiadi', 'Tegal', '1997-11-16', 'Laki-laki', '7A'),
(190702, 'Annisavira', 'Tegal', '1998-02-23', 'Perempuan', '7A'),
(190704, 'Tyas Sekar', 'Pemalang', '1998-06-16', 'Perempuan', '7C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(9) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `jumlah_buku` int(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tanggal_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tanggal_input`) VALUES
(14, ' 41 Script PHP Siap Pakai', 'Yosef Murya', 'Jasakom', '2017', '9786020823249', 24, 'Rak 1', '2019-10-01'),
(15, 'Hackintosh: Jalankan Mac Os X', 'Macbook Pro', 'Jasakom', '2014', '9789791090933', 17, 'Rak 1', '2019-10-01'),
(16, 'Windows 7 Security', 'Yusmadi', 'Jasakom', '2010', '9789791090421', 4, 'Rak 1', '2019-10-01'),
(17, 'Membangun IT Savvy', 'Jogiyanto ', 'Andi', '2017', '9789792960297', 0, 'Rak 1', '2019-10-01'),
(18, 'CISCO Kung Fu', 'Aristo', 'Jasakom', '2017', '9786020823270', 21, 'Rak 1', '2019-10-01'),
(19, 'BackTrack 5 R3 : 100% Attack', 'Stephen', 'Jasakom', '2013', '9789791090797', 1, 'Rak 1', '2019-10-01'),
(20, 'Blogging : Have Fun', 'Carolina', 'Stiletto', '2016', '9786027572447', 14, 'Rak 1', '2019-10-01'),
(21, 'PHP Dan MYSQL', 'R.H. Sianipar', 'Andi', '2016', '9789792952810', 5, 'Rak 1', '2019-10-01'),
(22, 'Buku Sakti Pemrograman Web Seri PHP', 'Mundzir MF', 'Jasakom', '1994', '9789792960297', 10, 'Rak 1', '2019-12-09'),
(23, 'Matematika', 'Yusmadi', 'StartUp', '1994', '9789791090872', 20, 'Rak 2', '2019-12-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_denda`
--

CREATE TABLE `tb_denda` (
  `id` int(11) NOT NULL,
  `denda` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_denda`
--

INSERT INTO `tb_denda` (`id`, `denda`) VALUES
(1, '500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lokasibuku`
--

CREATE TABLE `tb_lokasibuku` (
  `id` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_lokasibuku`
--

INSERT INTO `tb_lokasibuku` (`id`, `lokasi`) VALUES
(1, 'Rak 1'),
(2, 'Rak 2'),
(3, 'Rak 3'),
(4, 'Rak 4'),
(5, 'Rak 5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `foto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id`, `username`, `nama`, `password`, `level`, `foto`) VALUES
(10, 'setiadi', 'setiadi', '1eb03fdef652095eb20668ecf9ee6ab5', 'admin', 'terima-kasih.jpg'),
(11, 'dadi', 'dadi', '11cce4cbc871796013fa495b82ff98a6', 'petugas', 'ui-sherman.jpg'),
(14, 'nugroho', 'nugroho', '5588432fffd3b845fe662e6e9e9ea924', 'ks', '20170114_204300.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(9) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `lambat` varchar(100) DEFAULT NULL,
  `denda` varchar(100) DEFAULT NULL,
  `status` enum('Pinjam','Kembali','Hilang','Lunas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `judul`, `nis`, `nama`, `tanggal_pinjam`, `tanggal_kembali`, `lambat`, `denda`, `status`) VALUES
(219, 'Hackintosh: Jalankan Mac Os X', '180810', 'Yoga Widianto', '2019-12-03', '2019-12-10', '15 ', '7500', 'Kembali'),
(220, 'BackTrack 5 R3 : 100% Attack', '190702', 'Annisavira', '2019-12-03', '2019-12-10', NULL, NULL, 'Pinjam'),
(221, 'Windows 7 Security', '190701', 'Dadi Setiadi', '2019-12-03', '2019-12-10', '15 ', '7500', 'Lunas'),
(222, 'Buku Sakti Pemrograman Web Seri PHP', '190704', 'Tyas Sekar', '2019-12-25', '2020-01-01', '0 ', '0', 'Hilang'),
(223, 'PHP Dan MYSQL', '190701', 'Dadi Setiadi', '2019-12-26', '2020-01-02', NULL, NULL, 'Pinjam'),
(224, 'Buku Sakti Pemrograman Web Seri PHP', '190704', 'Tyas Sekar', '2019-12-26', '2020-01-02', NULL, NULL, 'Pinjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lokasibuku`
--
ALTER TABLE `tb_lokasibuku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_denda`
--
ALTER TABLE `tb_denda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_lokasibuku`
--
ALTER TABLE `tb_lokasibuku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
