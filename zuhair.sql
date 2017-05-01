-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for bitcom
CREATE DATABASE IF NOT EXISTS `bitcom` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bitcom`;


-- Dumping structure for table bitcom.captcha
CREATE TABLE IF NOT EXISTS `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `word` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Data exporting was unselected.


-- Dumping structure for view bitcom.kota_provinsi
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `kota_provinsi` (
	`id_kota` INT(11) NOT NULL,
	`kota` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`provinsi` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`kota_dan_provinsi` VARCHAR(102) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


-- Dumping structure for table bitcom.tbl_banner
CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `kode_banner` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `stts` varchar(1) NOT NULL,
  PRIMARY KEY (`kode_banner`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_biayakurir
CREATE TABLE IF NOT EXISTS `tbl_biayakurir` (
  `id_biayakurir` int(11) NOT NULL AUTO_INCREMENT,
  `kurir` int(11) NOT NULL,
  `namapaket` varchar(50) NOT NULL,
  `kota` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  PRIMARY KEY (`id_biayakurir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_intermezzo
CREATE TABLE IF NOT EXISTS `tbl_intermezzo` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_katalog
CREATE TABLE IF NOT EXISTS `tbl_katalog` (
  `id_katalog` int(100) NOT NULL AUTO_INCREMENT,
  `judul_file` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_katalog`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_kategori
CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) NOT NULL,
  `kode_level` int(2) NOT NULL,
  `kode_parent` int(5) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_kota
CREATE TABLE IF NOT EXISTS `tbl_kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi` int(11) NOT NULL,
  `kota` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_kurir
CREATE TABLE IF NOT EXISTS `tbl_kurir` (
  `id_kurir` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kurirvendor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kurir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_produk
CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `kode_produk` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nama_produk` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(5) NOT NULL,
  `dibeli` int(5) NOT NULL,
  `gbr_kecil` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_besar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tipe_produk` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `berat` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_provinsi
CREATE TABLE IF NOT EXISTS `tbl_provinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provinsi` (`provinsi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_spr_admn
CREATE TABLE IF NOT EXISTS `tbl_spr_admn` (
  `kode_spr_admn` int(10) NOT NULL AUTO_INCREMENT,
  `username_admn` varchar(50) NOT NULL,
  `pass_admn` varchar(100) NOT NULL,
  `nama_admn` varchar(100) NOT NULL,
  `stts` varchar(20) NOT NULL,
  `lvl` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_spr_admn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_testimonial
CREATE TABLE IF NOT EXISTS `tbl_testimonial` (
  `id_testi` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `status` int(1) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  PRIMARY KEY (`id_testi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_transaksi_detail
CREATE TABLE IF NOT EXISTS `tbl_transaksi_detail` (
  `kode_transaksi_detail` int(50) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` bigint(150) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `transport` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kode_transaksi_detail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_transaksi_header
CREATE TABLE IF NOT EXISTS `tbl_transaksi_header` (
  `kode_transaksi` bigint(150) NOT NULL,
  `kode_user` int(20) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `email_penerima` varchar(150) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `propinsi` int(11) NOT NULL,
  `kota` int(11) NOT NULL,
  `kodepos` varchar(100) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `metode` varchar(50) NOT NULL,
  `paket_kirim` int(11) NOT NULL DEFAULT '0',
  `bank` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`kode_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table bitcom.tbl_user
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `kode_user` int(100) NOT NULL AUTO_INCREMENT,
  `username_user` varchar(100) NOT NULL,
  `pass_user` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(50) NOT NULL,
  `propinsi` varchar(200) NOT NULL,
  `kota` int(11) NOT NULL,
  `kode_pos` varchar(30) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `stts` int(1) NOT NULL,
  `kode_aktivasi` varchar(200) NOT NULL,
  `tgl_transaksi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for view bitcom.kota_provinsi
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `kota_provinsi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `kota_provinsi` AS SELECT 
tbl_kota.id as `id_kota`,
tbl_kota.kota,
tbl_provinsi.provinsi,
concat (tbl_kota.kota,', ',tbl_provinsi.provinsi) as `kota_dan_provinsi`
from
tbl_kota 
inner join tbl_provinsi
on tbl_kota.provinsi=tbl_provinsi.id ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
