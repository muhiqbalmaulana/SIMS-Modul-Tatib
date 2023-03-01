/*
Navicat MySQL Data Transfer

Source Server         : 3307
Source Server Version : 50545
Source Host           : localhost:3307
Source Database       : dbms_blitarrev

Target Server Type    : MYSQL
Target Server Version : 50545
File Encoding         : 65001

Date: 2017-03-02 09:27:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `guru`
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru` (
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

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES ('19570203 198211 1 002', 'Mahsuni,  BA', '', '', 'e26345dd8f72c87ae8b6743530c31593', '36.81.185.143', 'n', 'T', 't', 't', 'n', 'y', 'y', 't', 'IV/aPembina', 't');
INSERT INTO `guru` VALUES ('19560809 198703 1 002', 'Agus Siswanto, BA', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19560102 198703 1 001', 'Suprapdi, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19650719 198903 2 008', 'Yuli Astuti, S Pd', '', '', 'c8409e90ec5487c12be908a23ec86afb', '180.248.17.183', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19641011 198803 1 012', 'Drs. Hutamadi', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19640207 198703 2 010', 'Dra. Tris Hari Susanti, M. Pd.', '', '', '273e3c890d8ecd396198d3099ddef612', '202.67.46.14', '', 'Y', 'y', 'y', '', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19641022 199003 2 006', 'Dra. Herlin Ernawati, M.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('19730908 200501 1 013', 'Wahyono Iswinarko, ST', 'Jl. Semeru 97A, Blitar', '081336059676', 'c2b14ebb79bc7412ce4fde776c37ede7', '36.73.221.72', 'y', 'Y', 'y', 'y', 'n', 'y', 'y', 'y', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19551114 198003 1 011', 'Drs. Wasito', 'Blitar', '1234', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-BPembina Tingkat I', 'y');
INSERT INTO `guru` VALUES ('19630710 198902 1 002', 'Suharno, SP', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19620303 198903 1 019', 'Widjiono, S.Pd', '', '', '59fdde4f21579a431d68ba739b0e2bc6', '114.125.104.184', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19610306 199203 1 005', 'Drs. Berowiyana', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19611115 198603 1 015', 'Drs. Suprihanto', '', '', '13aad2132976b88a4e0b5599a9d84044', '202.67.40.220', '', 'Y', '', '', '', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19591112 198703 1 006', 'Drs. Ali Mahsun', 'Blitar', '1234', 'a624557fe15944a8c2eed02f45f61425', '180.248.17.183', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19591210 198603 1 024', 'Drs. Bambang Setyono, ST.M.Pd', 'Blitar', '1234', 'f7c6845ef34f737d7483db16dd2a5650', '180.251.89.65', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('19560414 198003 2 008', 'Ismoyowati, S. Pd.', 'Blitar', '1234', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-BPembina Tingkat I', 't');
INSERT INTO `guru` VALUES ('masngud', 'masngud', 'malang', '1234', 'aa4e6e046953abb99a0606eb1af3ca12', '127.0.0.1', 'y', 'Y', 'y', 'y', 'y', 'y', 'y', 'y', '--', 't');
INSERT INTO `guru` VALUES ('19570131 198403 1 008', 'Drs. Suparni', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19570525 198703 1 008', 'Drs.Suharjana', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19580613 198603 1 010', 'Ismanto, S.Pd', '', '', 'ec680283bacf8f9bdd8beddfcaeb4464', '36.74.75.27', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19591028 198603 2 014', 'Faridah, S.PdI', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19590820 198603 2 010', 'Hj. Aris Srianjarwati, S.Pd. M.Pd.', '', '', '389f6001be9c87e23545b3948928a18d', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19590103 198903 2 002', 'Nunuk Priharwati, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19590324 198603 2 004', 'Dra.Ellys  Soelistyaningsih', '', '', '94d7fa81528cd71d22c424a8cefce576', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19591009 198202 2 015', 'Dwi Rusmawati, S. Pd.', '', '', '710019f3037a1891ea85f5af7649e433', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19590829 198202 1 005', 'Lasito, Amd. Pd.', '', '', '5aee5a12ffb22affd3a60a3228fb05d1', '61.94.198.132', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19590314 199303 1 004', 'Drs. Rudy  Purwanto', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19590921 198101 2 003', 'Dra. Hj. Endang Pudjiastuti', '', '', 'a624557fe15944a8c2eed02f45f61425', '36.81.136.84', '', 'Y', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19601210 199412 1 001', 'Drs. Singgih Sugiarto', '', '', 'a624557fe15944a8c2eed02f45f61425', '125.164.111.168', '', '', '', '', '', 'y', 'y', 'y', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('19600718 199601 1 001', 'Drs. Sunyono', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19610121 198911 1 002', 'Drs. Imron Rosadi', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('19611006 198911 1 001', 'Bahrudin . S.Pd', '', '', 'bf77fd405d31ff90be1e27d487293614', '114.125.118.144', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19610617 198903 2 004', 'Dra.Endang Sri Trajuningtyas', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19610612 198703 1 018', 'Drs. Rochmandi', '', '', 'e79e95e40c9a6419fd3622891d58fcec', '125.164.24.183', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19611117 198703 1 008', 'Drs. Sudarmaji', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19630513 198903 2 006', 'Sriati, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19630308 199512 1 004', 'Yohanes Krisnawan, S.Pd', '', '', 'a17beaca33c476b95b891458271b0dc7', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19630307 198412 1 004', 'Muchamad Ubaidillah, S. Pd.', '', '', 'd53711ea6dbb7cc3cc4bfcc6cf2eae7d', '36.74.75.27', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19630618 199403 2 003', 'Dra. Nunik Pundi Winarsih,MM', '', '', 'cd0b831b55d5188e5aecc27e3a63ea8a', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19630825 198703 1 008', 'Drs. Agus Purwanto', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', 'Y', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19640824 198903 2 006', 'Dra. Sulistyaningsih', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19641108 199003 1 011', 'Drs. Danil Sofyan', '', '', 'dd67adcbf02b4be438b8041ae09947a9', '114.125.108.170', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19640205 199512 1 002', 'Drs. Sugiyadi, M.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '36.74.30.243', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19650904 199203 2 007', 'Dra. Endang Pudjiastuti', '', '', '5aea950c2bace67a94e016234191a16a', '110.139.75.168', '', 'Y', 'y', 'y', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19651231 198901 1 036', 'Edy Prasetyo, S. Pd.', '', '', 'd1718cc2b43e2b623e8e24976197b961', '180.248.17.183', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19650517 199003 1 010', 'Darwanto, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19651219 199103 1 009', 'Drs. Hery  Setyowahono', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19650505 199003 1 024', 'Drs. Armais', '', '', '39d9c2702ac3a2ce1dc5ad74b273c9a6', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19660511 199601 1 001', 'Drs. Azhar Isnaniadi', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19660917 199103 2 011', 'Tri Suparmi', '', '', '706840fcba2521afcd4af9e3aab7f2e1', '202.67.40.205', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19661221 199103 2 006', 'Dra. Syamsul Huda', '', '', 'dd67adcbf02b4be438b8041ae09947a9', '114.125.85.66', '', 'Y', '', 'y', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19670506 199601 1 001', 'Drs. Agus  Pranoto', '', '', 'a624557fe15944a8c2eed02f45f61425', '36.78.104.43', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19750806 200901 1 003', 'Mokhamad Agus Bastomi, S.Pd.', 'Dsn/Ds. Karanggayam RT 003 RW 003 Kec.Srengat Blitar KP:66152', '081555824825', '67371ec4ea5c92a52ed0ba2bd2e279a4', '36.81.185.5', '', '', '', '', '', 't', 'y', 't', 'III/bPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19820608 200604 1 006', 'Titis Eswindro, S.Si, M.Pd', 'Jl. Anggrek II/09 Desa/Kec. Karangrejo Tulungagung 66253', '081334608281', 'ea1b040b33cbc725ebea49f0b54b71af', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('girisa1', 'girisa1', 'mlang', '12345', 'a624557fe15944a8c2eed02f45f61425', '192.168.89.17', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('19701118 199512 1 001', 'Ady Sucipto. S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19700606 199601 1 002', 'M. Ghufron S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19670326 199512 1 002', 'Drs. Imam Kolis, SST', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('19690823 199512 1 001', 'Iwan Prastyawan, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '36.74.73.183', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19680528 199412 1 004', 'Azis Komari. S.Pd', '', '', 'c4e02e222a9d21b8f34be747c30167bb', '120.188.87.131', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('19670420 199203 1 007', 'Sukarmadi, S.Pd, M. MPd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19690910 199203 1 009', 'Broto Darmodjo, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19700422 199703 1 005', 'Drs. Purnama Edy Prastya', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19650714 198903 2 011', 'Tri Retno Agung Cobimawarni, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', 'y', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19670411 199303 1 006', 'Suprianto, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '', 'n', 'T', 't', 't', 'n', 't', 't', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('19700908 199702 1 002', 'Nurhadi Saputro,SPd, M.Eng', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'IV-APembina', 't');
INSERT INTO `guru` VALUES ('19640719 199203 2 006', 'Dyah In Wahyuningsih, ST.', 'Perum GKR Blok A 1 Sananwetan Kota Blitar', '085236520285', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III/dPenata Tingkat I', 't');
INSERT INTO `guru` VALUES ('19660617 199402 1 003', 'Jalu Kusworo, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-DPenata Tingkat I', 't');
INSERT INTO `guru` VALUES ('19700407 199703 1 006', 'Hamid taslim, S. Pd. MT', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-DPenata Tingkat I', 't');
INSERT INTO `guru` VALUES ('19620101 199003 1 017', 'Didik Erminanto. ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-DPenata Tingkat I', 't');
INSERT INTO `guru` VALUES ('19651220 199112 1 001', 'Triyoga Susila', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-DPenata Tingkat I', 't');
INSERT INTO `guru` VALUES ('19650124 198903 1 005', 'H. Eko Bhakti .S, ST, M. Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19660419 200501 2 002', 'Endang Sulistiyowati, S.Pd, M. Pd', '', '', '28b8474b20694a37a4c30e6afbf1069f', '202.67.46.2', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19760105 200501 2 010', 'Tusiyam, S.Pd', '', '', '1bbdd78ac6b16df423261ab8dc8b6c45', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19720404 200501 2 009', 'Puji Lestari, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19670826 200501 1 006', 'Drs. Sujiono', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19690414 200501 1 012', 'Sigid Widodo, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '114.127.245.9', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19730324 200501 1 005', 'Agus Triyanto, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III/cPenata', 't');
INSERT INTO `guru` VALUES ('19720215 200501 1 006', 'Mochamad Masroni, S.Pd', '', '', '5361998f8ed145c104f266fc19a4fe0b', '115.178.255.88', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19740730 200501 2 009', 'Prihandari, S.Pd, M. MPd', '', '', '70182da1c0cd3e1dd7920d4272d18739', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19710817 200501 1 016', 'Agus Triono, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19720407 200501 1 009', 'Priyono, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19750507 200501 1 015', 'Mei Vivi Sumantri, S.Pd', '', '', 'e590ea2692eca08bf341e76f873dd001', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19790625 200501 1 012', 'Eko Purwantoro, S.Pd', '', '', 'b7f9bfca73cf6aeabf8129b3d3f00deb', '80.187.112.48', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19711027 200501 1 004', 'Yuwono Subosunarto, S.T', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19651202 199512 1 003', 'Mochamad Ansorul Amin, S.Pd', '', '', 'c237208b64c578856d2c2b89d858bcf8', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19781205 200604 2 009', 'Rize Chandra Bahari, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '36.74.66.113', '', 'Y', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19740118 200604 1 007', 'Mochamad Ridwan, ST', '', '', '45e51686d632d7d359acd8faaf0b95df', '36.74.75.27', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19700905 200604 1 004', 'Tohari, S.Pd', '', '', '13b29f81affa2212da0c371f6c8b4275', '114.125.115.209', '', '', '', '', 'y', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19660922 200501 1 002', 'Edy Suroso, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '36.73.163.144', '', '', '', 'y', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19700516 200604 2 007', 'Maria Magdalena Sucining, S.S', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19750302 200604 2 014', 'Iin Faristin, S.Pd', '', '', 'f94aa7a3e1af9e187f87a0e9c0d3d4f5', '36.85.89.87', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19710217 200604 2 012', 'Sri Wahyuni, S.Pd', '', '', 'eb538fe0e584fbee5a7893a373ff2bd3', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19720617 200604 2 012', 'Kantiasih, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', 'y', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19701120 200501 2 005', 'Farida Andriani, S.Pd, M. Pd', '', '', 'af201cc4f89b7173644d65d1302800aa', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19781219 200501 2 011', 'St. Aminah Rosidah, S.Pd ', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('19760613 200901 1 009', 'Aminudin, S.S', '', '', 'a4bfc7a04f108e5a50adfa7a7162006f', '114.125.112.238', '', '', '', '', '', 't', 't', 't', 'III-CPenata', 't');
INSERT INTO `guru` VALUES ('196504032007012017', 'Titik Suryati, S. Pd', '', '', 'd33841b31cdf6ccb76e8d930c4d5bbfa', '36.81.117.93', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19740111 200501 2 009', 'Yusi Hartutik, S.Pd, M. Pd', '', '', 'b6dec10c0d8570be648f6eb84b47f15d', '36.84.187.213', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19670705 200604 1 012', 'Dadik Muryani, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '180.247.26.51', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19770506 200604 1 010', 'Kurniawan Dwi Antono, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19721210 200604 1 009', 'Heri Purnomo, S. Pd, M. Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19681114 200501 1 005', 'Slamet, S.Pd', '', '', '4ae5fd273ecdb62177ba1fd613c21eb3', '36.81.184.70', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19681005 200701 2 028', 'Windanah, S.Pd', '', '', '7438779e1f6de99dcc09f039569ff37d', '36.84.36.85', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19650505 200801 2 008', 'Dra. Rodjiyah', '', '', '9cad9a4453008a0c0674e68849edef3c', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19751106 200604 2 021', 'Noer Koestiningsih, S.Pd, M. Pd', '', '', 'ab3c6fc45b0b54cd93a1c69984fba0ff', '125.164.102.60', '', '', '', '', 'y', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19681220 200801 2 010', 'Eti Hendrijani, S.Pd', '', '', '831629fb07bbcf4d727759b491b3938c', '36.74.75.27', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19790203 200901 1 011', 'M. Lutfi, S.Pd', '', '', 'fdf75b6d290b00cd2fa71f5b8f60e457', '115.178.235.177', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19820123 200901 2 003', 'Ernis Hidayati, S. Sos', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19800106 200901 2 001', 'Siti Aisah, S. Psi', '', '', 'a624557fe15944a8c2eed02f45f61425', '114.125.80.110', '', 'Y', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19821022 200901 2 009', 'Alfi Syahrina, S.Pd', '', '', '1abf7a8e64813d2611da733ab8e7ba1b', '114.125.77.189', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19830823 200901 1 005', 'Dodik Wayan, S.Pd', '', '', '292001f1ae7301aaa3d6bf0f73c1de3f', '36.74.75.27', '', '', '', '', 'y', 'y', 'y', 'y', 'III/bPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19810816 200901 1 014', 'Rudy Setyawan, S. Si', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19740411 200901 1 003', 'Muhammad Sofvan Hadi, S. Si', '', '', 'a6d507956cda5734b0327254761a5827', '114.125.104.137', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19780712 200901 1 012', 'Hafid Suyuti, S.Si., M.Pd.', 'Dusun Jeding Lor RT 03 RW 09 Desa Ariyojeding, Kec Rejotangan, Kab. Tulungagung', '081331800070', '6289526763cd55d784f1fabcd3087205', '180.254.48.80', 'y', 'Y', 'y', 'y', '', 't', 't', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('19760624 200901 1 009', 'Heri Purwanto, S.Kom', '', '', 'cc1b306e60f208f2779d8e852bb9d373', '114.125.115.209', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19830812 200901 1 008', 'M. Choirul Mutaqin Anam, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19770814 200901 1 007', 'Sutikno, S.Pd', '', '', '2bdbea85b2976c0acdcf2f508e0406d1', '36.74.73.183', '', 'Y', '', 'y', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19800305 200901 1 009', 'Moh. Hanif Zainuddin, S.Pd', '', '', 'df1e0cbbbc1f990da82ce17a235ce449', '114.125.81.214', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19820929 200901 1 006', 'Roni Kurjaya, S.Pd', '', '', '3df96c396d775ab5deea45523280d1dd', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19770516 200901 1 005', 'Budijati Pramono, ST', '', '', '04e1015c6168b2a2794f4087203bc06c', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19830111 200901 1 008', 'Heri Siswanto, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '114.125.104.88', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19780922 200901 1 005', 'Ahmad Haris Abdillah, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '180.248.17.183', '', '', '', '', '', 't', 'y', 't', 'III/bPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19750709 200901 1 001', 'Yohanes Gualbertus Jawa, S.Ag', '', '', '3b0ae4c98b232663d5dc1486c7a85041', '36.74.73.183', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19810428 200901 1 005', 'Eko Andrianto, S. Pd', '', '', 'bc8c6942f770911622a54807b2c7d2f5', '125.164.152.36', '', '', '', '', '', 't', 'y', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('19760703 200901 1 006', 'Ahmad Sihabudin Mawardi, ST', '', '', '125c61582b1deced971d6da68a520b91', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19840812 200901 1 004', 'Agus Dwi Prasetyo, S. Pd', '', '', '1cfc27dcff36a358bb6c085842c602a9', '115.178.236.128', '', '', '', '', 'y', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19810626 200901 2 004', 'Fatik Hatu Zuhriyah, S. Pd', '', '', 'b4c97d18d67fcc2afdb72688016e8657', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19760701 200901 2 002', 'Dwi Kristinasari, S.Pd', '', '', '7baadd0e91643628af76027146d8e5d8', '114.125.104.140', '', 'Y', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19740825 200901 2 001', 'Uti Susiwi, ST', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19821030 200901 2 006', 'Sophia Budi Utami, S.S, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '107.167.113.137', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19700517 200901 2 001', 'Sonta Sitorus, S.Th', '', '', 'c565977b5ac5cbdea83e5e518f495fa1', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19820405 200901 2 008', 'Aprilya Damayanti, S.Psi', '', '', 'af9928e11c83056a3a91809f06745135', '8.37.234.133', '', 'Y', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19810208 200901 1 005', 'Nur Fuad Bastomi, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '36.81.117.93', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19760723 200901 2 004', 'Florensia Tyastuti, S.Pd', '', '', '34a1a0b2ce14702dee7298f0df4f68b6', '180.248.17.183', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('198103102009011005', 'Arif Priyambodo, S. Kom', '', '', 'a624557fe15944a8c2eed02f45f61425', '180.248.17.183', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19740908 200901 1 004', 'Muhammad Subekan, ST', 'Jl. Raya Pule Kandat. RT 01/RW 02 Ds. PULE  Kec. KANDAT  Kab. KEDIRI', '081556535362', '16e86f364069c43365e445870e6ca450', '36.81.117.93', '', '', '', '', '', 't', 'y', 't', 'III/bPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19800416 200901 2 005', 'Dewi Mardianasari, S.Pd', '', '', 'd67e2acd9b05daa5e0a411cf629ebb68', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19771216 200901 1 006', 'Arif Hendrawan Suryanto, ST', '', '', 'a5941c27b3558517fb42f923bf3edff0', '125.164.19.38', '', '', '', '', '', 't', 'y', 't', 'III/bPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('197510182010011006', 'Argo Nugroho, S. Si', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('197504162010011011', 'Agus Widodo, S.T', '', '', '4ab2ef7e8740cf8f07d5f4644c2a0f49', '128.199.201.63', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19860708b201001 2 008', 'Dewi Yuchanifah, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('197811302010012002', 'Emy Hermawaty, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', 'Y', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19850723 201001 1 004', 'Haris Inu Binadi, S.Kom', '', '081333197348', '6a6d8191dcce726e4b50299d58b10828', '110.139.75.168', '', '', '', '', 'y', 't', 'y', 't', 'III/bPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19760104 201001 2 003', 'Yety Yanuwarsi, S.Si', '', '', '4b42b60ad2810e7134e48d0f57b8b92a', '110.139.75.168', '', '', '', '', '', 't', 't', 't', 'III/bPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('197912272010012003', 'Anita Irawati, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '114.125.83.110', '', 'Y', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('198101292010012009', 'Anis Yanuarti, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19791129 201001 1 006', 'Yongen Susman, S.Kom', '', '', 'a624557fe15944a8c2eed02f45f61425', '128.199.214.89', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('198207082010011009', 'Aditya Kusuma Wardhana, S.Sn, MM', '', '', 'e1afcce17bc71f55d9ee480456ba737b', '120.188.79.89', '', '', '', '', 'y', 't', 'y', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('19680203 200501 2 007', 'Maslihah, S.Pdl', '', '', '7c2ad826d26b341bee9758d11f8efe19', '180.248.17.183', '', '', '', '', '', 't', 't', 't', 'III-BPenata Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('19781128 201001 1 007', 'Yogi Indra Gunawan, S.Pd', '', '', '9034066e7dc5b0cb5729cdf52755d10b', '36.74.73.183', '', '', '', '', '', 't', 't', 't', 'III-APenata Muda', 't');
INSERT INTO `guru` VALUES ('19780102 201001 1 010', 'Hari Krisdianto Yohanes, S.Pd.', '', '', 'a624557fe15944a8c2eed02f45f61425', '110.139.75.168', '', 'Y', '', '', '', 't', 't', 't', 'III-APenata Muda', 't');
INSERT INTO `guru` VALUES ('19760401 201001 1 003', 'Deny Safril, S.T', '', '', '0eb7613948730ee272bbe9b387e35714', '180.246.254.219', '', '', '', '', '', 't', 't', 't', 'III-APenata Muda', 't');
INSERT INTO `guru` VALUES ('19770626 201001 1 006', 'Siswandi, S.T', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', 'III-APenata Muda', 't');
INSERT INTO `guru` VALUES ('19791108 201402 2 001', 'Mayuningtyas Dyah Indharti. M, ST', 'jl. Borobudur no. 107', '087759277790', '21bf5eca0cc2378d72fa5283b120cae6', '36.74.213.254', '', '', '', '', '', 't', 't', 't', 'III/aPenata Muda', 't');
INSERT INTO `guru` VALUES ('19810518 201402 2 001', 'Wiwik Mardiana, ST', '', '', '9ef5706e4eca13a204d87f5c37892851', '180.248.17.183', '', '', '', '', '', 't', 't', 't', 'III-APenata Muda', 't');
INSERT INTO `guru` VALUES ('19890519 201402 1 001', 'Fitriana Kuntoro Aji, S.Pd', '', '', '940a9c4fd77fd6a695951eaa3d2df92f', '110.139.75.168', '', '', '', '', 'y', 't', 't', 't', 'III-APenata Muda', 't');
INSERT INTO `guru` VALUES ('19741222 200701 1 012', 'Mujito', '', '', 'bc16f9d0cc6c3d0775719e7bb5d402fe', '36.74.73.183', '', '', '', '', 'y', 't', 't', 't', 'II-BPengatur Muda Tingkat I', 't');
INSERT INTO `guru` VALUES ('3388', 'Aris Sutrisno, S.T', '', '', '635e415f7c2d6b17499e883ac6c7a7a8', '110.139.75.168', 'y', 'Y', 'y', 'y', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('157', 'Hendra Yuwono, S.Pd', '', '', 'cf8378693f5d8336b4bea36a960e9443', '120.188.64.8', '', '', '', '', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('158', 'Dwi Riniati, S.Pd', '', '', '256dfb91c53131f75eaaa171a59e19c1', '180.253.35.10', '', '', '', '', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('159', 'Yulianingsih, S.Pd', '', '', 'a05308004f6f0f2418612d93e761ae50', '128.199.165.82', '', '', '', '', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('160', 'Agus Zubaidi, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '', '', '', '', '', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('161', 'Yenis Oktaviana Suseno, S.Pd', '', '', 'a624557fe15944a8c2eed02f45f61425', '114.125.108.89', '', '', '', '', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('162', 'Dwi Rudianto, S.Pd', '', '', '60c6c3e3b0b1256c9eaef02be0e068fe', '180.251.127.182', '', '', '', '', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('163', 'Yeni Tri Lestari, S.Pdl', '', '', '7c841b937b41959286d310e3c05ebb3e', '110.139.75.168', '', '', '', 'y', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('164', 'Yefi Dyan Nofa H., S.I.Kom, M.A', '', '', 'a624557fe15944a8c2eed02f45f61425', '36.74.75.27', '', '', '', '', '', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('girisa', 'girisa', 'malang', '12345', 'a624557fe15944a8c2eed02f45f61425', '192.168.89.31', 'y', 'T', 't', 't', 'n', 't', 't', 't', '--', 't');
INSERT INTO `guru` VALUES ('19760505 200201 1 004', 'Drs. Girisa Teknologi', '', '', 'c2cc7affaa2e9869183a18a2f0598515', '', 'y', 'T', 'y', 't', 'n', 't', 't', 't', 'IV/ePembina Utama', 't');
INSERT INTO `guru` VALUES ('929292', 'Prasetia Cahya Jadi', 'malang', '+6281249383787', 'a624557fe15944a8c2eed02f45f61425', null, 'n', '', '', '', 'n', 't', 'y', 't', null, 't');
INSERT INTO `guru` VALUES ('166', 'Dharmawati', '', '', 'a624557fe15944a8c2eed02f45f61425', null, 'n', '', '', '', 'n', 't', 'y', 't', null, 't');
INSERT INTO `guru` VALUES ('167', 'Dodik Roby Dermawan, S.Pd.', '', '', '2e10dd65f24e95b0a4332b8569ae8d5a', '202.67.46.22', '', '', '', '', 'y', 't', 'y', 't', null, 't');
INSERT INTO `guru` VALUES ('168', 'Rina Tri Wijayanti, S.Pd.', '', '', 'a624557fe15944a8c2eed02f45f61425', '202.67.41.22', 'n', '', '', '', 'n', 't', 'y', 't', null, 't');
INSERT INTO `guru` VALUES ('169', 'Mukasri', '-', '-', 'a624557fe15944a8c2eed02f45f61425', '128.199.165.82', '', '', '', '', '', 't', 'y', 't', null, 't');

-- ----------------------------
-- Table structure for `jurusan`
-- ----------------------------
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) NOT NULL,
  `kapro_ganjil` varchar(30) NOT NULL,
  `kapro_genap` varchar(30) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `tahun_ajaran` (`tahun_ajaran`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jurusan
-- ----------------------------
INSERT INTO `jurusan` VALUES ('1', 'Teknik Konstruksi Batu Beton', '19620101 199003 1 017', '19620101 199003 1 017', '1');
INSERT INTO `jurusan` VALUES ('2', 'Teknik Gambar Bangunan', '19620101 199003 1 017', '19620101 199003 1 017', '1');
INSERT INTO `jurusan` VALUES ('3', 'Teknik Instalasi Pemanfaatan Tenaga Listrik', '19750806 200901 1 003', '19750806 200901 1 003', '1');
INSERT INTO `jurusan` VALUES ('4', 'Teknik Pemesinan', '19720407 200501 1 009', '19720407 200501 1 009', '1');
INSERT INTO `jurusan` VALUES ('5', 'Teknik Kendaraan Ringan', '19730324 200501 1 005', '19730324 200501 1 005', '1');
INSERT INTO `jurusan` VALUES ('6', 'Teknik Audio Video', '19740908 200901 1 004', '19740908 200901 1 004', '1');
INSERT INTO `jurusan` VALUES ('7', 'Teknik Elektronika Industri', '19770506 200604 1 010', '19770506 200604 1 010', '1');
INSERT INTO `jurusan` VALUES ('8', 'Teknik Komputer dan Jaringan', '19670326 199512 1 002', '19670326 199512 1 002', '1');
INSERT INTO `jurusan` VALUES ('9', 'Teknik Produksi dan Penyiaran Program Radio dan Pertelevisian', '19670326 199512 1 002', '19670326 199512 1 002', '1');

-- ----------------------------
-- Table structure for `kelas`
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
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

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES ('1', '1', 'X TKBBT 1', 'X', '19720617 200604 2 012', '19720617 200604 2 012');
INSERT INTO `kelas` VALUES ('2', '1', 'X TKBBT 2', 'X', '19701120 200501 2 005', '19701120 200501 2 005');
INSERT INTO `kelas` VALUES ('3', '2', 'X TGB 1', 'X', '19611115 198603 1 015', '19611115 198603 1 015');
INSERT INTO `kelas` VALUES ('4', '2', 'X TGB 2', 'X', '19680203 200501 2 007', '19680203 200501 2 007');
INSERT INTO `kelas` VALUES ('5', '3', 'X TITL 1', 'X', '19770516 200901 1 005', '19770516 200901 1 005');
INSERT INTO `kelas` VALUES ('6', '3', 'X TITL 2', 'X', '19591009 198202 2 015', '19591009 198202 2 015');
INSERT INTO `kelas` VALUES ('7', '3', 'X TITL 3', 'X', '19760401 201001 1 003', '19760401 201001 1 003');
INSERT INTO `kelas` VALUES ('8', '3', 'X TITL 4', 'X', '19650505 200801 2 008', '19650505 200801 2 008');
INSERT INTO `kelas` VALUES ('9', '4', 'X TPM 1', 'X', '19810518 201402 2 001', '19810518 201402 2 001');
INSERT INTO `kelas` VALUES ('10', '4', 'X TPM 2', 'X', '19740118 200604 1 007', '19740118 200604 1 007');
INSERT INTO `kelas` VALUES ('11', '4', 'X TPM 3', 'X', '19681220 200801 2 010', '19681220 200801 2 010');
INSERT INTO `kelas` VALUES ('12', '4', 'X TPM 4', 'X', '19630308 199512 1 004', '19630308 199512 1 004');
INSERT INTO `kelas` VALUES ('13', '5', 'X TKR 1', 'X', '19630710 198902 1 002', '19630710 198902 1 002');
INSERT INTO `kelas` VALUES ('14', '5', 'X TKR 2', 'X', '158', '158');
INSERT INTO `kelas` VALUES ('15', '5', 'X TKR 3', 'X', '19660617 199402 1 003', '19660617 199402 1 003');
INSERT INTO `kelas` VALUES ('16', '5', 'X TKR 4', 'X', '19650904 199203 2 007', '19650904 199203 2 007');
INSERT INTO `kelas` VALUES ('17', '6', 'X TAV 1', 'X', '19640207 198703 2 010', '19640207 198703 2 010');
INSERT INTO `kelas` VALUES ('18', '6', 'X TAV 2', 'X', '19661221 199103 2 006', '19661221 199103 2 006');
INSERT INTO `kelas` VALUES ('19', '7', 'X TEI 1', 'X', '19640824 198903 2 006', '19640824 198903 2 006');
INSERT INTO `kelas` VALUES ('20', '7', 'X TEI 2', 'X', '19720215 200501 1 006', '19720215 200501 1 006');
INSERT INTO `kelas` VALUES ('21', '8', 'X TKJ 1', 'X', '19590820 198603 2 010', '19590820 198603 2 010');
INSERT INTO `kelas` VALUES ('22', '8', 'X TKJ 2', 'X', '198103102009011005', '198103102009011005');
INSERT INTO `kelas` VALUES ('23', '9', 'X TP3RTV 1', 'X', '19760723 200901 2 004', '19760723 200901 2 004');
INSERT INTO `kelas` VALUES ('24', '9', 'X TP3RTV 2', 'X', '164', '164');

-- ----------------------------
-- Table structure for `kelas_siswa`
-- ----------------------------
DROP TABLE IF EXISTS `kelas_siswa`;
CREATE TABLE `kelas_siswa` (
  `nis` char(20) NOT NULL,
  `kelas` int(11) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL,
  PRIMARY KEY (`nis`,`kelas`,`tahun_ajaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kelas_siswa
-- ----------------------------
INSERT INTO `kelas_siswa` VALUES ('24338', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('24438', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('24463', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('24685', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('24935', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25184', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25185', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25186', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25187', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25188', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25189', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25190', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25191', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25192', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25193', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25194', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25195', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25196', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25197', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25198', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25199', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25200', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25201', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25202', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25203', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25204', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25205', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25206', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25207', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25208', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25209', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25210', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25211', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25212', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25213', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25214', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25215', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25216', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25217', '1', '1');
INSERT INTO `kelas_siswa` VALUES ('25218', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25219', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25220', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25221', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25222', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25223', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25224', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25225', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25226', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25227', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25228', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25229', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25230', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25231', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25232', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25233', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25234', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25235', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25236', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25237', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25238', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25239', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25240', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25241', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25242', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25243', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25244', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25245', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25246', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25247', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25248', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25249', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25250', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25251', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25252', '2', '1');
INSERT INTO `kelas_siswa` VALUES ('25253', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25254', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25255', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25256', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25257', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25258', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25259', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25260', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25261', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25262', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25263', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25264', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25265', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25266', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25267', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25268', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25269', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25270', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25271', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25272', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25273', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25274', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25275', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25276', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25277', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25278', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25279', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25280', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25281', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25282', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25283', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25284', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25285', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25286', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25287', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25288', '3', '1');
INSERT INTO `kelas_siswa` VALUES ('25289', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25290', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25291', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25292', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25293', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25294', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25295', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25296', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25297', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25298', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25299', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25300', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25301', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25302', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25303', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25304', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25305', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25306', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25307', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25308', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25309', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25310', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25311', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25312', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25313', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25314', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25315', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25316', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25317', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25318', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25319', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25320', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25321', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25322', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25323', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25324', '4', '1');
INSERT INTO `kelas_siswa` VALUES ('25325', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25326', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25327', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25328', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25329', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25330', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25331', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25332', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25333', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25334', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25335', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25336', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25337', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25338', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25339', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25340', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25341', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25342', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25343', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25344', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25345', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25346', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25347', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25348', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25349', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25350', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25351', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25352', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25353', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25354', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25355', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25356', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25357', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25358', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25359', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25360', '5', '1');
INSERT INTO `kelas_siswa` VALUES ('25361', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25362', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25363', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25364', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25365', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25366', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25367', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25368', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25369', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25370', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25371', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25372', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25373', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25374', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25375', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25376', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25377', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25378', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25379', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25380', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25381', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25382', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25383', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25384', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25385', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25386', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25387', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25388', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25389', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25390', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25391', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25392', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25393', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25394', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25395', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25396', '6', '1');
INSERT INTO `kelas_siswa` VALUES ('25397', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25398', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25399', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25400', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25401', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25402', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25403', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25404', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25405', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25406', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25407', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25408', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25409', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25410', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25411', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25412', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25413', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25414', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25415', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25416', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25417', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25418', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25419', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25420', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25421', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25422', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25423', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25424', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25425', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25426', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25427', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25428', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25429', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25430', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25431', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25432', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25433', '7', '1');
INSERT INTO `kelas_siswa` VALUES ('25434', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25435', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25436', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25437', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25438', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25439', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25440', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25441', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25442', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25443', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25444', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25445', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25446', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25447', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25448', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25449', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25450', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25451', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25452', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25453', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25454', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25455', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25456', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25457', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25458', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25459', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25460', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25461', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25462', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25463', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25464', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25465', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25466', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25467', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25468', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25469', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25470', '8', '1');
INSERT INTO `kelas_siswa` VALUES ('25471', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25472', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25473', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25474', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25475', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25476', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25477', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25478', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25479', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25480', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25481', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25482', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25483', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25484', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25485', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25486', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25487', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25488', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25489', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25490', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25491', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25492', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25493', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25494', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25495', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25496', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25497', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25498', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25499', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25500', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25501', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25502', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25503', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25504', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25505', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25506', '13', '1');
INSERT INTO `kelas_siswa` VALUES ('25507', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25508', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25509', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25510', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25511', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25512', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25513', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25514', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25515', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25516', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25517', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25518', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25519', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25520', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25521', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25522', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25523', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25524', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25525', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25526', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25527', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25528', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25529', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25530', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25531', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25532', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25533', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25534', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25535', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25536', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25537', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25538', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25539', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25540', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25541', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25542', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25543', '14', '1');
INSERT INTO `kelas_siswa` VALUES ('25544', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25545', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25546', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25547', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25548', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25549', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25550', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25551', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25552', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25553', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25554', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25555', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25556', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25557', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25558', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25559', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25560', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25561', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25562', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25563', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25564', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25565', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25566', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25567', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25568', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25569', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25570', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25571', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25572', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25573', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25574', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25575', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25576', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25577', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25578', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25579', '15', '1');
INSERT INTO `kelas_siswa` VALUES ('25580', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25581', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25582', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25583', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25584', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25585', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25586', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25587', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25588', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25589', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25590', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25591', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25592', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25593', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25594', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25595', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25596', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25597', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25598', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25599', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25600', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25601', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25602', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25603', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25604', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25605', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25606', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25607', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25608', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25609', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25610', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25611', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25612', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25613', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25614', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25615', '16', '1');
INSERT INTO `kelas_siswa` VALUES ('25616', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25617', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25618', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25619', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25620', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25621', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25622', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25623', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25624', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25625', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25626', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25627', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25628', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25629', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25630', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25631', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25632', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25633', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25634', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25635', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25636', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25637', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25638', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25639', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25640', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25641', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25642', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25643', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25644', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25645', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25646', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25647', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25648', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25649', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25650', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25651', '9', '1');
INSERT INTO `kelas_siswa` VALUES ('25652', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25653', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25654', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25655', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25656', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25657', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25658', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25659', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25660', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25661', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25662', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25663', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25664', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25665', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25666', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25667', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25668', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25669', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25670', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25671', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25672', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25673', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25674', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25675', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25676', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25677', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25678', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25679', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25680', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25681', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25682', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25683', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25684', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25685', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25686', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25687', '10', '1');
INSERT INTO `kelas_siswa` VALUES ('25688', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25689', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25690', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25691', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25692', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25693', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25694', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25695', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25696', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25697', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25698', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25699', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25700', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25701', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25702', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25703', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25704', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25705', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25706', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25707', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25708', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25709', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25710', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25711', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25712', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25713', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25714', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25715', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25716', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25717', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25718', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25719', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25720', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25721', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25722', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25723', '11', '1');
INSERT INTO `kelas_siswa` VALUES ('25724', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25725', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25727', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25728', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25729', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25730', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25731', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25732', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25733', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25734', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25735', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25736', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25737', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25738', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25739', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25740', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25741', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25742', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25743', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25744', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25745', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25746', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25747', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25748', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25749', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25750', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25751', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25752', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25753', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25754', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25755', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25756', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25757', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25758', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25759', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25760', '12', '1');
INSERT INTO `kelas_siswa` VALUES ('25761', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25762', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25763', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25764', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25765', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25766', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25767', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25768', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25769', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25770', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25771', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25772', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25773', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25774', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25775', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25776', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25777', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25778', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25779', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25780', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25781', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25782', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25783', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25784', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25785', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25786', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25787', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25788', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25789', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25790', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25791', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25792', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25793', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25794', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25795', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25796', '17', '1');
INSERT INTO `kelas_siswa` VALUES ('25797', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25798', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25799', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25800', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25801', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25802', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25803', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25804', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25805', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25806', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25807', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25808', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25809', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25810', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25811', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25812', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25813', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25814', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25815', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25816', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25817', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25818', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25819', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25820', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25821', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25822', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25823', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25824', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25825', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25826', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25827', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25828', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25829', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25830', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25831', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25832', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25833', '18', '1');
INSERT INTO `kelas_siswa` VALUES ('25834', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25835', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25836', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25837', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25838', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25839', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25840', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25841', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25842', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25843', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25844', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25845', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25846', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25847', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25848', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25849', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25850', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25851', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25852', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25853', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25854', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25855', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25856', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25857', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25858', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25859', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25860', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25861', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25862', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25863', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25864', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25865', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25866', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25867', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25868', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25869', '19', '1');
INSERT INTO `kelas_siswa` VALUES ('25870', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25871', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25872', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25873', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25874', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25875', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25876', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25877', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25878', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25879', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25880', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25881', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25882', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25883', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25884', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25885', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25886', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25887', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25888', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25889', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25890', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25891', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25892', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25893', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25894', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25895', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25896', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25897', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25898', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25899', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25900', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25901', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25902', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25903', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25904', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25905', '20', '1');
INSERT INTO `kelas_siswa` VALUES ('25906', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25907', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25908', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25909', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25910', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25911', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25912', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25913', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25914', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25915', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25916', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25917', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25918', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25919', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25920', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25921', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25922', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25923', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25924', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25925', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25926', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25927', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25928', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25929', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25930', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25931', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25932', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25933', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25934', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25935', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25936', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25937', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25938', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25939', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25940', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25941', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25942', '21', '1');
INSERT INTO `kelas_siswa` VALUES ('25943', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25944', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25945', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25946', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25947', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25948', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25949', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25950', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25951', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25952', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25953', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25954', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25955', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25956', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25957', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25958', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25959', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25960', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25961', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25962', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25963', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25964', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25965', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25966', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25967', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25968', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25969', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25970', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25971', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25972', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25973', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25974', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25975', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25976', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25977', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25978', '22', '1');
INSERT INTO `kelas_siswa` VALUES ('25979', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25980', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25981', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25982', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25983', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25984', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25985', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25986', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25987', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25988', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25989', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25990', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25991', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25992', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25993', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25994', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25995', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25996', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25997', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25998', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('25999', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26000', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26001', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26002', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26003', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26004', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26005', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26006', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26007', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26008', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26009', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26010', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26011', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26012', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26013', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26014', '23', '1');
INSERT INTO `kelas_siswa` VALUES ('26015', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26016', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26017', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26018', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26019', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26020', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26021', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26022', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26023', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26024', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26025', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26026', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26027', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26028', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26029', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26030', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26031', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26032', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26033', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26034', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26035', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26036', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26037', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26038', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26039', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26040', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26041', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26042', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26043', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26044', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26045', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26046', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26047', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26048', '24', '1');
INSERT INTO `kelas_siswa` VALUES ('26049', '24', '1');

-- ----------------------------
-- Table structure for `tahun_ajaran`
-- ----------------------------
DROP TABLE IF EXISTS `tahun_ajaran`;
CREATE TABLE `tahun_ajaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tahun_ajaran
-- ----------------------------
INSERT INTO `tahun_ajaran` VALUES ('1', '2016/2017');

-- ----------------------------
-- Table structure for `tatib`
-- ----------------------------
DROP TABLE IF EXISTS `tatib`;
CREATE TABLE `tatib` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tatib
-- ----------------------------

-- ----------------------------
-- Table structure for `tatib_range`
-- ----------------------------
DROP TABLE IF EXISTS `tatib_range`;
CREATE TABLE `tatib_range` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `nilai` int(11) NOT NULL,
  `Keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tatib_range
-- ----------------------------

-- ----------------------------
-- Table structure for `tipe_pelajaran`
-- ----------------------------
DROP TABLE IF EXISTS `tipe_pelajaran`;
CREATE TABLE `tipe_pelajaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipe_kode` char(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `diurut` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipe_pelajaran
-- ----------------------------
INSERT INTO `tipe_pelajaran` VALUES ('1', 'A', 'Kelompok A', null);
INSERT INTO `tipe_pelajaran` VALUES ('2', 'B', 'Kelompok B', null);
INSERT INTO `tipe_pelajaran` VALUES ('3', 'C', 'Kelompok C', null);
