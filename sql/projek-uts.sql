-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2021 at 06:34 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek-uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `sinopsis` varchar(500) NOT NULL,
  `imgURL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`, `tahun_terbit`, `sinopsis`, `imgURL`) VALUES
(1, 'The Chronicles of Naruto', 'Masashi Kishimoto', '1999-09-21', 'Bercerita mengenai kisah hidup Naruto, seorang yatim piatu yang memiliki mimpi besar untuk menjadi Hokage di desa Konoha. Bisakah ia mencapai mimpinya tersebut? Simaklah cerita nya dalam buku ini!', 'http://1.bp.blogspot.com/-r_Og7uNxGX8/T6uBH7sJYCI/AAAAAAAAAQw/cM6T-VVBioI/s1600/Volume05Cover.jpg'),
(2, 'Rich Dad Poor Dad', 'Robert Kiyosaki', '1997-01-01', 'Buku ini menceritakan tentang Robert Kiyosaki yang memiliki dua orang yang berpengaruh dalam kehidupannya, yang satu adalah ayahnya sendiri sedangkan yang lain adalah ayah temannya. Kedua ayah tersebut memiliki latar belakang dan sudut pandang yang berbeda', 'https://images-na.ssl-images-amazon.com/images/I/81dQwQlmAXL.jpg'),
(3, 'Laskar Pelangi', 'Andrea Hirata', '2005-01-01', 'Novel laskar pelangi karya Andrea Hirata ini bercerita keseharian mereka di sekolah serta juga bagaimana mereka menjalankan kehidupannya di lingkungan sosial. Mereka adalah anak-anak desa dengan tekad luar biasa. Perjalanan mereka dipenuhi kejadian yang tak terduga. ', 'https://upload.wikimedia.org/wikipedia/id/8/8e/Laskar_pelangi_sampul.jpg'),
(4, 'Marmut Merah Jambu', 'Raditya Dika', '2010-01-01', 'Marmut Merah Jambu adalah buku karya Raditya Dika kelima yang diterbitkan pada tahun 2010. Masih berkonsepkan cerita komedi yang ditulis berdasarkan kisah sang penulis seperti dalam buku-buku sebelumnya. Garis besar buku ini menceritakan kisah asmara penulis mapun orang terdekatnya.', 'https://www.bukukita.com/babacms/displaybuku/101540_f.jpg'),
(5, 'Dilan 1990', 'Pidi Baiq', '2014-01-01', 'Novel ini menceritakan kisah cinta anak SMA yaitu Dilan. Ia adalah salah satu anak geng motor yang bersifat nakal, namun jika dilihat dari sisi lain akan ditemukan juga hal positif di dalam dirinya. Ia jatuh cinta kepada Milea, seorang murid baru pindahan dari Jakarta. Bisakah Dilan membuat Milea takluk kepadanya? Baca kelanjutannya di dalam novel ini!', 'https://ebooks.gramedia.com/ebook-covers/31754/big_covers/ID_MIZ2016MTH03DDADT_B.jpg'),
(6, 'Manusia Setengah Salmon', 'Raditya Dika', '2011-12-01', 'Manusia Setengah Salmon mengisahkan seroang pria bernama Dika (Raditya Dika), seorang penulis yang sedang berusaha move on dari mantan kekasihnya. Dika harus menghadapi berbagai masalah mulai dari dirinya yang belum bisa melupakan sang mantan hingga orang tuanya yang ingin segera pindah rumah.', 'https://www.bukukita.com/babacms/displaybuku/101538_f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `perpustakaan`
--

CREATE TABLE `perpustakaan` (
  `id_perpustakaan` int(11) NOT NULL,
  `nama_perpustakaan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perpustakaan`
--

INSERT INTO `perpustakaan` (`id_perpustakaan`, `nama_perpustakaan`, `alamat`) VALUES
(1, 'Mondstadt', 'Jalan Kebebasan No. 77, Springvale'),
(2, 'Liyue', 'Jalan Kontrak No. 1, Qingce'),
(3, 'Inazuma', 'Jalan Kekekalan No. 99, Sangonomiya');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `id_User` int(11) NOT NULL COMMENT 'FK user id',
  `id_buku` int(11) NOT NULL COMMENT 'FK buku id',
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='table for transaksi peminjaman';

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_pinjam`, `id_User`, `id_buku`, `tgl_pinjam`, `tgl_kembali`) VALUES
(5, 9, 2, '2021-10-25', '2021-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL COMMENT 'FK user id',
  `id_perpus` int(11) NOT NULL COMMENT 'FK perpus id',
  `tgl_reservasi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `id_user`, `id_perpus`, `tgl_reservasi`) VALUES
(7, 9, 2, '2021-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL COMMENT 'must be unique, max 20 char',
  `password` varchar(255) NOT NULL COMMENT 'max 20 char',
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'must be unique',
  `status` int(11) NOT NULL COMMENT '0 or 1 (1=activated)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `status`) VALUES
(9, 'ravelino11', '$2y$10$3ATgHsQAKEl274A2iNQcVe/fLalsbaU7LeysGFMaGLf8ll2d6AtsC', 'Ravelino', 'sebastianravelino@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `perpustakaan`
--
ALTER TABLE `perpustakaan`
  ADD PRIMARY KEY (`id_perpustakaan`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `FK_Buku` (`id_buku`),
  ADD KEY `FK_coba` (`id_User`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`),
  ADD KEY `FK_Perpus` (`id_perpus`),
  ADD KEY `FK_User` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `perpustakaan`
--
ALTER TABLE `perpustakaan`
  MODIFY `id_perpustakaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `FK_Buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `FK_coba` FOREIGN KEY (`id_User`) REFERENCES `user` (`id`);

--
-- Constraints for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `FK_Perpus` FOREIGN KEY (`id_perpus`) REFERENCES `perpustakaan` (`id_perpustakaan`),
  ADD CONSTRAINT `FK_User` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
