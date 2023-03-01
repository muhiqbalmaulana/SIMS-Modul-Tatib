-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.1.19-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk tatib_baru
CREATE DATABASE IF NOT EXISTS `tatib_baru` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tatib_baru`;

-- membuang struktur untuk table tatib_baru.guru
CREATE TABLE IF NOT EXISTS `guru` (
  `nip` char(30) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` char(15) NOT NULL,
  `password` char(32) NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `kurikulum` enum('y','n') NOT NULL DEFAULT 'n',
  `bk` enum('Y','T') NOT NULL DEFAULT 'T',
  `tu` enum('y','t') NOT NULL DEFAULT 't',
  `eskul` enum('y','t') NOT NULL DEFAULT 't',
  `sms` enum('n','y') NOT NULL DEFAULT 'n',
  `tatib` enum('t','y') NOT NULL DEFAULT 't',
  `pns` enum('t','y') NOT NULL DEFAULT 'y',
  `prakerin` enum('t','y') NOT NULL DEFAULT 't',
  `gol` char(50) DEFAULT NULL,
  `locked` enum('t','y') NOT NULL DEFAULT 't',
  PRIMARY KEY (`nip`),
  KEY `nip` (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table tatib_baru.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) NOT NULL,
  `kapro_ganjil` varchar(30) NOT NULL,
  `kapro_genap` varchar(30) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `tahun_ajaran` (`tahun_ajaran`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table tatib_baru.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jurusan` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tingkat` enum('X','XI','XII') NOT NULL,
  `wali_kelas_ganjil` varchar(30) NOT NULL,
  `wali_kelas_genap` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `jurusan` (`jurusan`),
  KEY `wali_kelas_genap` (`wali_kelas_genap`),
  KEY `wali_kelas_ganjil` (`wali_kelas_ganjil`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table tatib_baru.kelas_siswa
CREATE TABLE IF NOT EXISTS `kelas_siswa` (
  `nis` char(20) NOT NULL,
  `kelas` int(11) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL,
  PRIMARY KEY (`nis`,`kelas`,`tahun_ajaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table tatib_baru.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `nisn` char(15) DEFAULT NULL,
  `nis` char(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` char(32) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `aktif` varchar(2) NOT NULL,
  `nama_panggilan` varchar(25) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL DEFAULT 'L',
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` enum('islam','kristen katolik','kristen protestan','hindu','buddha') NOT NULL DEFAULT 'islam',
  `kewarganegaraan` varchar(30) DEFAULT NULL,
  `anak_ke` tinyint(2) DEFAULT NULL,
  `jml_saudara_kandung` tinyint(2) DEFAULT NULL,
  `jml_saudara_tiri` tinyint(2) DEFAULT NULL,
  `jml_saudara_angkat` tinyint(2) DEFAULT NULL,
  `status_anak` enum('yatim','piatu','yatim piatu','-') DEFAULT '-',
  `bahasa` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nomor_hp` char(13) DEFAULT NULL,
  `tinggal` enum('orang_tua','saudara','asrama','kos') DEFAULT 'orang_tua',
  `jarak` tinyint(4) DEFAULT NULL,
  `gol_darah` enum('-','A','B','AB','O') DEFAULT NULL,
  `penyakit` varchar(100) DEFAULT NULL,
  `kelainan_jasmani` varchar(100) DEFAULT NULL,
  `tinggi` int(4) DEFAULT NULL,
  `berat` tinyint(4) DEFAULT NULL,
  `tamatan_dari` varchar(50) DEFAULT NULL,
  `alamat_tamatan` varchar(50) DEFAULT NULL,
  `nomor_skhun` varchar(30) DEFAULT NULL,
  `nomor_ijazah` varchar(30) DEFAULT NULL,
  `lama_belajar` tinyint(4) DEFAULT NULL,
  `sekolah_pindahan` varchar(100) DEFAULT NULL,
  `alasan_pindahan` varchar(255) DEFAULT NULL,
  `diterima_kelas` enum('X','XI','XII') DEFAULT 'X',
  `bidang_keahlian` varchar(100) DEFAULT NULL,
  `program_keahlian` varchar(100) DEFAULT NULL,
  `diterima_tanggal` date DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(50) DEFAULT NULL,
  `tanggal_lahir_ayah` date DEFAULT NULL,
  `agama_ayah` enum('islam','kristen katolik','kristen protestan','hindu','buddha') DEFAULT 'islam',
  `kewarganegaraan_ayah` varchar(50) DEFAULT NULL,
  `pendidikan_ayah` varchar(10) DEFAULT NULL,
  `pekerjaan_ayah` varchar(50) DEFAULT NULL,
  `pengeluaran_perbulan_ayah` char(30) DEFAULT NULL,
  `alamat_ayah` text,
  `telepon_ayah` char(13) DEFAULT NULL,
  `status_hidup_ayah` enum('hidup','meninggal') DEFAULT 'hidup',
  `nama_ibu` varchar(100) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(50) DEFAULT NULL,
  `tanggal_lahir_ibu` date DEFAULT NULL,
  `agama_ibu` enum('islam','kristen katolik','kristen protestan','hindu','buddha') DEFAULT 'islam',
  `kewarganegaraan_ibu` varchar(50) DEFAULT NULL,
  `pendidikan_ibu` varchar(10) DEFAULT NULL,
  `pekerjaan_ibu` varchar(50) DEFAULT NULL,
  `pengeluaran_perbulan_ibu` char(30) DEFAULT NULL,
  `alamat_ibu` text,
  `telepon_ibu` char(13) DEFAULT NULL,
  `status_hidup_ibu` enum('hidup','meninggal') DEFAULT 'hidup',
  `nama_wali` varchar(100) DEFAULT NULL,
  `tempat_lahir_wali` varchar(50) DEFAULT NULL,
  `agama_wali` enum('islam','kristen katolik','kristen protestan','hindu','buddha') DEFAULT 'islam',
  `kewarganegaraan_wali` varchar(50) DEFAULT NULL,
  `tanggal_lahir_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(50) DEFAULT NULL,
  `pengeluaran_perbulan_wali` char(30) DEFAULT NULL,
  `alamat_wali` text,
  `telepon_wali` char(13) DEFAULT NULL,
  `kesenian` varchar(255) DEFAULT NULL,
  `olahraga` varchar(255) DEFAULT NULL,
  `organisasi` varchar(255) DEFAULT NULL,
  `lain-lain` varchar(255) DEFAULT NULL,
  `tanggal_meninggalkan_sekolah` date DEFAULT NULL,
  `alasan_meninggalkan_sekolah` text,
  `tahun_lulus` char(4) DEFAULT NULL,
  `nomor_ijazah_akhir` varchar(30) DEFAULT NULL,
  `nomor_skhun_akhir` varchar(30) DEFAULT NULL,
  `melanjutkan_ke` varchar(100) DEFAULT NULL,
  `tanggal_mulai_bekerja` date DEFAULT NULL,
  `nama_perusahaan` varchar(100) DEFAULT NULL,
  `penghasilan` char(30) DEFAULT NULL,
  `set_biodata` enum('y','n') DEFAULT 'n',
  `set_publish` enum('n','y') DEFAULT 'n',
  PRIMARY KEY (`nis`),
  UNIQUE KEY `nis` (`nis`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table tatib_baru.tahun_ajaran
CREATE TABLE IF NOT EXISTS `tahun_ajaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table tatib_baru.tatib
CREATE TABLE IF NOT EXISTS `tatib` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nis` char(20) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nip` char(30) NOT NULL,
  `jujur` int(11) NOT NULL,
  `disiplin` int(11) NOT NULL,
  `santun` int(11) NOT NULL,
  `peduli` int(11) NOT NULL,
  `t_jawab` int(11) NOT NULL,
  `percaya_diri` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `semester` enum('1','2','3','4','5','6') NOT NULL,
  `tahun_ajaran` int(11) NOT NULL,
  KEY `id` (`id`),
  KEY `tanggal` (`tanggal`),
  KEY `nis` (`nis`),
  KEY `id_kelas` (`id_kelas`),
  KEY `nip` (`nip`),
  KEY `kelakuan` (`jujur`),
  KEY `kerajinan` (`disiplin`),
  KEY `kerapian` (`santun`),
  KEY `semester` (`semester`),
  KEY `tahun_ajaran` (`tahun_ajaran`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table tatib_baru.tatib_range
CREATE TABLE IF NOT EXISTS `tatib_range` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `nilai` int(11) NOT NULL,
  `Keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
