-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2024 at 08:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_report`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nrp` int NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'STAFF',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile.png',
  `seksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `departemen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `divisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ENABLED',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `nrp`, `role`, `photo`, `seksi`, `departemen`, `divisi`, `email`, `password`, `status`, `created_by`, `updated_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'TRAINING 1', 1, '1', 'profile.png', 'Training', 'Produksi', 'Produksi', 'training1@gmail.com', '$2y$10$8HgAAY/.cZjLZ86yfkrsNOSy03oWUvGPbFHQcnTvL0hzEX3jNpWRe', 'ENABLED', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'TRAINING 2', 2, '1', 'profile.png', 'Training', 'Produksi', 'Produksi', 'training2@gmail.com', '$2y$10$8HgAAY/.cZjLZ86yfkrsNOSy03oWUvGPbFHQcnTvL0hzEX3jNpWRe', 'ENABLED', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'TRAINING 3', 3, '1', 'profile.png', 'Training', 'Produksi', 'Produksi', 'training3@gmail.com', '$2y$10$8HgAAY/.cZjLZ86yfkrsNOSy03oWUvGPbFHQcnTvL0hzEX3jNpWRe', 'ENABLED', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'TRAINING 4', 4, '1', 'profile.png', 'Training', 'Produksi', 'Produksi', 'training4@gmail.com', '$2y$10$8HgAAY/.cZjLZ86yfkrsNOSy03oWUvGPbFHQcnTvL0hzEX3jNpWRe', 'ENABLED', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'TRAINING 5', 5, '1', 'profile.png', 'Training', 'Produksi', 'Produksi', 'training5@gmail.com', '$2y$10$8HgAAY/.cZjLZ86yfkrsNOSy03oWUvGPbFHQcnTvL0hzEX3jNpWRe', 'ENABLED', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'TRAINING 6', 6, '1', 'profile.png', 'Training', 'Produksi', 'Produksi', 'training6@gmail.com', '$2y$10$8HgAAY/.cZjLZ86yfkrsNOSy03oWUvGPbFHQcnTvL0hzEX3jNpWRe', 'ENABLED', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `energydata`
--

CREATE TABLE `energydata` (
  `id` int NOT NULL,
  `year` int DEFAULT NULL,
  `month` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Listrik` decimal(15,2) DEFAULT NULL,
  `SolarDieselB30` decimal(15,2) DEFAULT NULL,
  `NaturalGas` decimal(15,2) DEFAULT NULL,
  `SolarDieselB35` decimal(15,2) DEFAULT NULL,
  `BensinPetrol` decimal(15,2) DEFAULT NULL,
  `GRK` decimal(15,2) DEFAULT NULL,
  `EnergyGJ` decimal(15,2) DEFAULT NULL,
  `PenggunaanREC` decimal(15,2) DEFAULT NULL,
  `TotalAkhirGRK` decimal(15,2) DEFAULT NULL,
  `PersentaseReduceGRK` decimal(5,2) DEFAULT NULL,
  `TotalAkhirEnergyGJ` decimal(15,2) DEFAULT NULL,
  `TotalRenewableEnergyGJ` decimal(15,2) DEFAULT NULL,
  `PersentaseRenewableEnergy` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `energydata`
--

INSERT INTO `energydata` (`id`, `year`, `month`, `Listrik`, `SolarDieselB30`, `NaturalGas`, `SolarDieselB35`, `BensinPetrol`, `GRK`, `EnergyGJ`, `PenggunaanREC`, `TotalAkhirGRK`, `PersentaseReduceGRK`, `TotalAkhirEnergyGJ`, `TotalRenewableEnergyGJ`, `PersentaseRenewableEnergy`) VALUES
(1, 2024, 'Januari', 2104140.00, 1910.00, 16625.94, 11048.00, 1215.00, 2770.02, 26158.03, 1229.10, 1700.71, 24.00, 26158.03, 4577.66, 17.50),
(2, 2024, 'Februari', 1816620.00, 1405.00, 16340.89, 27751.60, 1192.00, 2533.47, 25411.63, 1138.33, 1543.12, 25.00, 25411.63, 4447.04, 17.50),
(8, 2019, 'Listrik', 12112.00, 1234.00, 12121.00, 4321.00, 63563.00, 833.00, 7259.00, 286376.00, 87665.00, 12.50, 75165.00, 18627.00, 12.00);

-- --------------------------------------------------------

--
-- Table structure for table `energysummary`
--

CREATE TABLE `energysummary` (
  `id` int NOT NULL,
  `year` int DEFAULT NULL,
  `month` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Listrik` decimal(15,2) DEFAULT NULL,
  `SolarDieselB30` decimal(15,2) DEFAULT NULL,
  `NaturalGas` decimal(15,2) DEFAULT NULL,
  `SolarDieselB35` decimal(15,2) DEFAULT NULL,
  `BensinPetrol` decimal(15,2) DEFAULT NULL,
  `GRK` decimal(15,2) DEFAULT NULL,
  `EnergyGJ` decimal(15,2) DEFAULT NULL,
  `PenggunaanREC` decimal(15,2) DEFAULT NULL,
  `TotalAkhirGRK` decimal(15,2) DEFAULT NULL,
  `PersentaseReduceGRK` decimal(5,2) DEFAULT NULL,
  `TotalAkhirEnergyGJ` decimal(15,2) DEFAULT NULL,
  `TotalRenewableEnergyGJ` decimal(15,2) DEFAULT NULL,
  `PersentaseRenewableEnergy` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `energysummary`
--

INSERT INTO `energysummary` (`id`, `year`, `month`, `Listrik`, `SolarDieselB30`, `NaturalGas`, `SolarDieselB35`, `BensinPetrol`, `GRK`, `EnergyGJ`, `PenggunaanREC`, `TotalAkhirGRK`, `PersentaseReduceGRK`, `TotalAkhirEnergyGJ`, `TotalRenewableEnergyGJ`, `PersentaseRenewableEnergy`) VALUES
(1, 2024, NULL, 3920760.00, 3315.00, 32966.83, 38799.60, 2407.00, 5303.49, 51569.66, 2367.43, 3243.83, 24.00, 51569.66, 9024.69, 17.50);

-- --------------------------------------------------------

--
-- Table structure for table `report_accident`
--

CREATE TABLE `report_accident` (
  `id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `date_accident` date DEFAULT NULL,
  `time_accident` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `department` text COLLATE utf8mb4_unicode_ci,
  `informasi` longtext COLLATE utf8mb4_unicode_ci,
  `kronologi` longtext COLLATE utf8mb4_unicode_ci,
  `image_accident` longtext COLLATE utf8mb4_unicode_ci,
  `first_aid` longtext COLLATE utf8mb4_unicode_ci,
  `image_first_aid` longtext COLLATE utf8mb4_unicode_ci,
  `event_category` text COLLATE utf8mb4_unicode_ci,
  `approved` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_accident`
--

INSERT INTO `report_accident` (`id`, `user_id`, `date_accident`, `time_accident`, `location`, `department`, `informasi`, `kronologi`, `image_accident`, `first_aid`, `image_first_aid`, `event_category`, `approved`, `approved_by`, `approved_date`) VALUES
(1, 1, '2024-05-15', '11:17', 'qweq', 'qwe', 'qwe', 'qwe', '1715747222614-555352908.webp', 'qwe', '1715747222615-464528826.png', 'qwe', '1', '1', '2024-05-15 11:52:56.985'),
(6, 3, '2024-01-15', '13:39', 'ds', 'fds', 'sdf', 'dsf', '1716964802579-513312596.png', 'sdf', '1716964802581-973354806.png', 'sdf', NULL, NULL, NULL),
(7, 3, '2024-06-10', '08:16', 'er', 're', 'erer', 'rere', '1717982231218-689506465.png', 'erer', '1717982231221-260231528.png', 'rere', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report_history`
--

CREATE TABLE `report_history` (
  `id` bigint NOT NULL,
  `frequncy_kecelakaan` double NOT NULL DEFAULT '0',
  `mh_worked_hilang` double NOT NULL DEFAULT '0',
  `mh_worked_tersedia` double NOT NULL DEFAULT '0',
  `hari_kerja_hilang` double NOT NULL DEFAULT '0',
  `hari_kerja_tersedia` double NOT NULL DEFAULT '0',
  `jumlah_karyawan` double NOT NULL DEFAULT '0',
  `persen_mh_worked_hilang` double NOT NULL DEFAULT '0',
  `frequency_rate` double NOT NULL DEFAULT '0',
  `severity_rate` double NOT NULL DEFAULT '0',
  `cost_kecelakaa_kerja` double NOT NULL DEFAULT '0',
  `kec_tampa_hari_hilang` double NOT NULL DEFAULT '0',
  `kec_dg_hari_hilang` double NOT NULL DEFAULT '0',
  `data_input` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_history`
--

INSERT INTO `report_history` (`id`, `frequncy_kecelakaan`, `mh_worked_hilang`, `mh_worked_tersedia`, `hari_kerja_hilang`, `hari_kerja_tersedia`, `jumlah_karyawan`, `persen_mh_worked_hilang`, `frequency_rate`, `severity_rate`, `cost_kecelakaa_kerja`, `kec_tampa_hari_hilang`, `kec_dg_hari_hilang`, `data_input`, `date_update`) VALUES
(10, 13, 2485, 3579296, 245, 308, 1684, 0.71, 0.84, 92.76, 55297700, 10, 3, '2012-01-01 00:00:00', NULL),
(11, 15, 103, 3812739, 21, 3, 1618, 0, 0.26, 0.51, 14921100, 14, 0, '2013-02-01 00:00:00', NULL),
(12, 13, 144, 3593463, 244, 244, 1558, 0, 0, 0.55, 66360500, 11, 2, '2014-01-01 00:00:00', NULL),
(13, 12, 147, 3035234, 244, 244, 1558, 0, 0.17, 0, 214359120, 9, 3, '2015-01-01 00:00:00', NULL),
(14, 6, 8, 1912944, 243, 0, 1558, 0, 0.17, 0, 23224000, 6, 0, '2016-01-01 00:00:00', NULL),
(15, 7, 296, 2156772, 244, 37, 1188, 0, 2.39, 6.27, 127521200, 4, 3, '2017-01-01 00:00:00', NULL),
(16, 7, 224, 2149928, 241, 28, 1149, 0, 0.89, 0, 89716880, 4, 3, '2018-01-01 00:00:00', NULL),
(17, 3, 34, 2231688, 242, 3, 1168, 0, 0.857, 4.486, 20291500, 1, 2, '2019-01-01 00:00:00', NULL),
(18, 12, 87, 2149250, 243, 49, 1157, 0, 2167, 0, 0, 6, 5, '2020-01-01 00:00:00', NULL),
(19, 8, 120, 1670133, 244, 14, 1022, 0, 2732, 0, 0, 7, 1, '2021-01-01 00:00:00', NULL),
(20, 17, 107, 1954667, 245, 7, 1056, 0, 4.816, 0, 0, 12, 5, '2022-01-01 00:00:00', NULL),
(21, 2, 82, 196768, 22, 34, 1119, 0, 0.005, 0.045, 0, 1, 1, '2023-01-31 00:00:00', NULL),
(22, 1, 0, 171040, 20, 0, 1069, 0, 0, 0, 0, 1, 0, '2023-02-28 00:00:00', NULL),
(23, 1, 0, 187768, 22, 0, 1068, 0, 0, 0, 0, 1, 0, '2023-03-31 00:00:00', NULL),
(24, 0, 0, 119504, 14, 0, 1067, 0, 0, 0, 0, 0, 0, '2023-04-30 00:00:00', NULL),
(25, 0, 0, 178461, 21, 0, 1062, 0, 0, 0, 0, 0, 0, '2023-05-31 00:00:00', NULL),
(26, 0, 0, 169280, 20, 0, 1058, 0, 0, 0, 0, 0, 0, '2023-06-30 00:00:00', NULL),
(27, 0, 0, 171680, 20, 0, 1073, 0, 0, 0, 0, 0, 0, '2023-07-31 00:00:00', NULL),
(28, 1, 40, 185504, 22, 5, 1054, 0, 0.005, 0.026, 0, 0, 1, '2023-08-31 00:00:00', NULL),
(29, 0, 0, 189552, 22, 0, 1077, 0, 0, 0, 0, 0, 0, '2023-11-30 00:00:00', NULL),
(30, 1, 152, 162336, 19, 19, 1068, 0, 0, 0, 0, 0, 1, '2023-12-31 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intensitas_air`
--

CREATE TABLE `intensitas_air` (
  `id` bigint NOT NULL,
  `product_finish_good` double DEFAULT NULL,
  `air_permukaan` double DEFAULT NULL,
  `air_tanah` double DEFAULT NULL,
  `air_pam` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_create` text COLLATE utf8mb4_unicode_ci,
  `date_update` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intensitas_air`
--

INSERT INTO `intensitas_air` (`id`, `product_finish_good`, `air_permukaan`, `air_tanah`, `air_pam`, `date`, `date_create`, `date_update`) VALUES
(1, 975.28, 0, 0, 4089, '2019-01-13', NULL, NULL),
(2, 913.46, 0, 0, 5686, '2019-02-13', NULL, NULL),
(3, 956.57, 0, 0, 6852, '2019-03-13', NULL, NULL),
(4, 936.94, 0, 0, 5525, '2019-04-13', NULL, NULL),
(5, 989.69, 0, 0, 5593, '2019-05-13', NULL, NULL),
(6, 680.65, 0, 0, 4894, '2019-06-13', NULL, NULL),
(7, 1025.44, 0, 0, 5659, '2019-07-13', NULL, NULL),
(8, 973.73, 0, 0, 5698, '2019-08-13', NULL, NULL),
(9, 975.82, 0, 0, 5365, '2019-09-13', NULL, NULL),
(10, 1074.9, 0, 0, 6724, '2019-10-13', NULL, NULL),
(11, 957.57, 0, 0, 6378, '2019-11-13', NULL, NULL),
(20, 714.1, 0, 0, 5242, '2019-12-13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report_solid_waste`
--

CREATE TABLE `report_solid_waste` (
  `id` bigint NOT NULL,
  `limbah_plastik_non_b3_disposed` double DEFAULT '0',
  `limbah_domestik_non_plastik_non_b3_disposed` double DEFAULT '0',
  `limbah_industri_non_plastik_non_b3_disposed` double DEFAULT '0',
  `limbah_b3_disposed` double DEFAULT '0',
  `total_limbah_padat_disposed` double GENERATED ALWAYS AS ((((`limbah_plastik_non_b3_disposed` + `limbah_domestik_non_plastik_non_b3_disposed`) + `limbah_industri_non_plastik_non_b3_disposed`) + `limbah_b3_disposed`)) STORED,
  `limbah_plastik_non_b3_diverted` double DEFAULT '0',
  `limbah_domestik_non_plastik_non_b3_diverted` double DEFAULT '0',
  `limbah_industri_non_plastik_non_b3_diverted` double DEFAULT '0',
  `limbah_b3_diverted` double DEFAULT '0',
  `total_limbah_padat_diverted` double GENERATED ALWAYS AS ((((`limbah_plastik_non_b3_diverted` + `limbah_domestik_non_plastik_non_b3_diverted`) + `limbah_industri_non_plastik_non_b3_diverted`) + `limbah_b3_diverted`)) STORED,
  `total_limbah_padat` double GENERATED ALWAYS AS ((`total_limbah_padat_disposed` + `total_limbah_padat_diverted`)) STORED,
  `percentage_diverted` double GENERATED ALWAYS AS ((case when (`total_limbah_padat` = 0) then 0 else ((`total_limbah_padat_diverted` / `total_limbah_padat`) * 100) end)) STORED,
  `date` date DEFAULT NULL,
  `date_create` text COLLATE utf8mb4_unicode_ci,
  `date_update` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_solid_waste`
--

INSERT INTO `report_solid_waste` (`id`, `limbah_plastik_non_b3_disposed`, `limbah_domestik_non_plastik_non_b3_disposed`, `limbah_industri_non_plastik_non_b3_disposed`, `limbah_b3_disposed`, `limbah_plastik_non_b3_diverted`, `limbah_domestik_non_plastik_non_b3_diverted`, `limbah_industri_non_plastik_non_b3_diverted`, `limbah_b3_diverted`, `date`, `date_create`, `date_update`) VALUES
(1, 0, 2746, 0, 0, 2707, 3417, 12328, 94892, '2024-01-31', '2024-05-31', '2024-05-31'),
(2, 0, 2398, 0, 0, 1947, 2427, 24984, 98953, '2024-02-29', '2024-02-29', '2024-02-29');

-- --------------------------------------------------------

--
-- Table structure for table `tabelkonversi2019`
--

CREATE TABLE `tabelkonversi2019` (
  `id` int NOT NULL,
  `SumberEnergi` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FaktorKonversiEmisiCO2` decimal(10,8) DEFAULT NULL,
  `FaktorKonversiEmisiCH4` decimal(10,8) DEFAULT NULL,
  `FaktorKonversiEmisiN2O` decimal(10,8) DEFAULT NULL,
  `FaktorKonversiEnergiGJ` decimal(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabelkonversi2019`
--

INSERT INTO `tabelkonversi2019` (`id`, `SumberEnergi`, `FaktorKonversiEmisiCO2`, `FaktorKonversiEmisiCH4`, `FaktorKonversiEmisiN2O`, `FaktorKonversiEnergiGJ`) VALUES
(1, 'Listrik pihak ke-3 (KWH)', 0.00087000, 0.00000000, 0.00000000, 0.003600),
(2, 'Listrik Cikarang Listrindo (KWH)', 0.00071000, 0.00000000, 0.00000000, 0.003600),
(3, 'Solar / Diesel 100% (Liter)', 0.00266100, 0.00000000, 0.00003700, 0.038368),
(4, 'Biofuel (CH4 and N2O Only) (Liter)', 0.00016800, 0.00000000, 0.00000000, 0.034440),
(5, 'B20 (Liter)', 0.00219300, 0.00000000, 0.00000000, 0.037582),
(6, 'B30 (Liter)', 0.00193900, 0.00000000, 0.00000000, 0.037189),
(7, 'B35 (Liter)', 0.00181300, 0.00000000, 0.00000000, 0.036993),
(8, 'LPG (Ton)', 2.93518000, 0.00228000, 0.00183000, 49.333000),
(9, 'Natural Gas (MMBTU)', 0.05480100, 0.00007500, 0.00002900, 1.086316),
(10, 'LNG (Ton)', 2.55439000, 0.00344000, 0.00134000, 50.080000),
(11, 'CNG (Ton)', 2.53447000, 0.00344000, 0.00134000, 50.080000),
(12, 'Bensin/Petrol 100% (Liter)', 0.00232600, 0.00000700, 0.00000700, 0.034869),
(13, 'CO2 APAR (Kg)', 0.00100000, 0.00000000, 0.00000000, 0.000000),
(14, 'FM200 (Kg)', 3.60000000, 0.00000000, 0.00000000, 0.000000),
(15, 'HFC-23 (Kg)', 14.60000000, 0.00000000, 0.00000000, 0.000000),
(16, 'HFC-32 (Kg)', 0.77000000, 0.00000000, 0.00000000, 0.000000),
(17, 'HFC-41 (Kg)', 0.14000000, 0.00000000, 0.00000000, 0.000000),
(18, 'HFC-125 (Kg)', 3.74000000, 0.00000000, 0.00000000, 0.000000),
(19, 'HFC-134 (Kg)', 1.26000000, 0.00000000, 0.00000000, 0.000000),
(20, 'HFC-134a (Kg)', 1.53000000, 0.00000000, 0.00000000, 0.000000),
(21, 'HFC-143 (Kg)', 0.36000000, 0.00000000, 0.00000000, 0.000000),
(22, 'HFC-143a (Kg)', 5.81000000, 0.00000000, 0.00000000, 0.000000),
(23, 'HFC-152 (Kg)', 0.02000000, 0.00000000, 0.00000000, 0.000000),
(24, 'HFC-152a (Kg)', 0.16000000, 0.00000000, 0.00000000, 0.000000),
(25, 'HCFC-401A (Kg)', 0.02000000, 0.00000000, 0.00000000, 0.000000),
(26, 'HCFC-401C (Kg)', 0.02000000, 0.00000000, 0.00000000, 0.000000),
(27, 'HCFC-123 (Kg)', 0.08000000, 0.00000000, 0.00000000, 0.000000),
(28, 'HFC-32a (Kg)', 0.77000000, 0.00000000, 0.00000000, 0.000000),
(29, 'HFC-404A (Kg)', 3.92000000, 0.00000000, 0.00000000, 0.000000),
(30, 'HFC-407A (Kg)', 2.11000000, 0.00000000, 0.00000000, 0.000000),
(31, 'HFC-407C (Kg)', 1.77000000, 0.00000000, 0.00000000, 0.000000),
(32, 'HFC-410A (Kg)', 2.09000000, 0.00000000, 0.00000000, 0.000000),
(33, 'HFC-507A (Kg)', 4.78000000, 0.00000000, 0.00000000, 0.000000),
(34, 'HFC-507C (Kg)', 4.78000000, 0.00000000, 0.00000000, 0.000000),
(35, 'HFO-514A (Kg)', 0.00000000, 0.00000000, 0.00000000, 0.000000);

-- --------------------------------------------------------

--
-- Table structure for table `tabelkonversi2024`
--

CREATE TABLE `tabelkonversi2024` (
  `id` int NOT NULL,
  `SumberEnergi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FaktorKonversiEmisiCO2` decimal(10,7) DEFAULT NULL,
  `FaktorKonversiEmisiCH4` decimal(10,7) DEFAULT NULL,
  `FaktorKonversiEmisiN2O` decimal(10,7) DEFAULT NULL,
  `FaktorKonversiEnergiGJ` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabelkonversi2024`
--

INSERT INTO `tabelkonversi2024` (`id`, `SumberEnergi`, `FaktorKonversiEmisiCO2`, `FaktorKonversiEmisiCH4`, `FaktorKonversiEmisiN2O`, `FaktorKonversiEnergiGJ`) VALUES
(1, 'Listrik pihak ke-3 (KWH)', 0.0008700, 0.0000000, 0.0000000, 0.0036000),
(2, 'Listrik Cikarang Listrindo (KWH)', 0.0006400, 0.0000000, 0.0000000, 0.0036000),
(3, 'Solar / Diesel 100% (Liter)', 0.0026260, 0.0000003, 0.0000331, 0.0379960),
(4, 'Biofuel (CH4 and N2O Only) (Liter)', 0.0001675, 0.0000000, 0.0000000, 0.0344430),
(5, 'B30 (Liter)', 0.0019118, 0.0000000, 0.0000000, 0.0366350),
(6, 'B35 (Liter)', 0.0017872, 0.0000000, 0.0000000, 0.0367530),
(7, 'B40 (Liter)', 0.0016626, 0.0000000, 0.0000000, 0.0368700),
(8, 'LPG (Ton)', 2.9351800, 0.0025500, 0.0016300, 49.3460000),
(9, 'Natural Gas (MMBTU)', 0.0555790, 0.0000839, 0.0000260, 1.0863160),
(10, 'LNG (Ton)', 2.5769400, 0.0038500, 0.0001910, 50.0880000),
(11, 'CNG (Ton)', 2.5753000, 0.0038500, 0.0001910, 50.0880000),
(12, 'Bensin/Petrol 100% (Liter)', 0.0023310, 0.0000000, 0.0000000, 0.0348690),
(13, 'CO2 APAR (Kg)', 0.0010000, 0.0000000, 0.0000000, 0.0000000),
(14, 'FM200 (Kg)', 3.6000000, 0.0000000, 0.0000000, 0.0000000),
(15, 'HFC-23 (Kg)', 14.6000000, 0.0000000, 0.0000000, 0.0000000),
(16, 'HFC-32 (Kg)', 0.7700000, 0.0000000, 0.0000000, 0.0000000),
(17, 'HFC-41 (Kg)', 0.1400000, 0.0000000, 0.0000000, 0.0000000),
(18, 'HFC-125 (Kg)', 3.7400000, 0.0000000, 0.0000000, 0.0000000),
(19, 'HFC-134 (Kg)', 1.2600000, 0.0000000, 0.0000000, 0.0000000),
(20, 'HFC-134a (Kg)', 1.5300000, 0.0000000, 0.0000000, 0.0000000),
(21, 'HFC-143 (Kg)', 0.3600000, 0.0000000, 0.0000000, 0.0000000),
(22, 'HFC-143a (Kg)', 5.8100000, 0.0000000, 0.0000000, 0.0000000),
(23, 'HFC-152 (Kg)', 0.0200000, 0.0000000, 0.0000000, 0.0000000),
(24, 'HFC-152a (Kg)', 0.1600000, 0.0000000, 0.0000000, 0.0000000),
(25, 'HFC-401A (Kg)', 0.0200000, 0.0000000, 0.0000000, 0.0000000),
(26, 'HFC-401C (Kg)', 0.0200000, 0.0000000, 0.0000000, 0.0000000),
(27, 'HFC-123 (Kg)', 0.0800000, 0.0000000, 0.0000000, 0.0000000),
(28, 'HFC-32a (Kg)', 0.7700000, 0.0000000, 0.0000000, 0.0000000),
(29, 'HFC-404A (Kg)', 3.9200000, 0.0000000, 0.0000000, 0.0000000),
(30, 'HFC-407A (Kg)', 2.1100000, 0.0000000, 0.0000000, 0.0000000),
(31, 'HFC-407C (Kg)', 1.7700000, 0.0000000, 0.0000000, 0.0000000),
(32, 'HFC-410A (Kg)', 2.0900000, 0.0000000, 0.0000000, 0.0000000),
(33, 'HFC-507A (Kg)', 4.7800000, 0.0000000, 0.0000000, 0.0000000),
(34, 'HFC-507C (Kg)', 4.7800000, 0.0000000, 0.0000000, 0.0000000),
(35, 'HFC-514A (Kg)', 0.0000000, 0.0000000, 0.0000000, 0.0000000);

-- --------------------------------------------------------

--
-- Table structure for table `users_data`
--

CREATE TABLE `users_data` (
  `user_id` bigint DEFAULT NULL,
  `full_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nrp` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_of_service` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE `users_login` (
  `id` bigint NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `date_create` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_update` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `name`, `email`, `password`, `phone_number`, `address`, `role`, `token`, `date_create`, `date_update`) VALUES
(1, 'Upi', 'upi@gmail.com', '$2b$10$SGN5oChfXJO8nR06bnAUgOeh.kkoRRyfILMjLB.02kSYTVgX7uCLa', '085714123740', 'Bekasi', '1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoidXBpQGdtYWlsLmNvbSIsIm5hbWUiOiJVcGkiLCJpYXQiOjE3MTg2OTkxODAsImV4cCI6MTcxODc0MjM4MH0.m9AoYXUxkSlEaN0NHABa4VgpHiS1i-2eyxp-3uB184A', '2024-05-07 10:33:52.707', NULL),
(2, 'Oka Bizantrio', 'oka.bizantrio@aop.component.astra.co.id', '$2b$10$c5kpCCGs6xjZH1Ih6OVhnuZVyabyivUXu1c4UBABwLxmBg3AI8g.i', '085714123740', 'Bekasi', '1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsImVtYWlsIjoib2thLmJpemFudHJpb0Bhb3AuY29tcG9uZW50LmFzdHJhLmNvLmlkIiwibmFtZSI6Ik9rYSBCaXphbnRyaW8iLCJpYXQiOjE3MTgwNjUxNzYsImV4cCI6MTcxODEwODM3Nn0.eSVb_mzHyyYE-SOt7UxW36IyhhDkIcTOb_MiU2noecY', '2024-05-07 10:33:39.488', NULL),
(3, 'Sapto Handoyo', 'sapto.handoyo@aop.component.astra.co.id', '$2b$10$YoQx5R3BgvgHq92JnZ2HpOFIhBe8KHH9HbCdo.Q571ESplQaWllUW', '085714123740', 'Bekasi', '2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImVtYWlsIjoic2FwdG8uaGFuZG95b0Bhb3AuY29tcG9uZW50LmFzdHJhLmNvLmlkIiwibmFtZSI6IlNhcHRvIEhhbmRveW8iLCJpYXQiOjE3MTYxNzIyOTMsImV4cCI6MTcxNjIxNTQ5M30.1wP6dXeK0mNRpof5lD-zYDnuNw2B-xPadfasJBgKAuc', '2024-05-07 10:32:46.462', NULL),
(8, 'Jarwo Sudibyo', 'jarwo-s@component.astra.co.id', '123', '085714123740', 'Bekasi', '1', NULL, '2024-06-13 14:27:32.295', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_update` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ini dalah table untuk mendevinisikan role dari user yang terdaftar ';

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `code`, `name`, `date_create`, `date_update`) VALUES
(1, 'ROOT', 'Root', '2024-04-18 09:49:15.650', ''),
(2, 'ADMIN', 'Admin', '2024-04-18 09:49:15.650', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_nrp_unique` (`nrp`);

--
-- Indexes for table `energydata`
--
ALTER TABLE `energydata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `energysummary`
--
ALTER TABLE `energysummary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_accident`
--
ALTER TABLE `report_accident`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `report_history`
--
ALTER TABLE `report_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intensitas_air`
--
ALTER TABLE `intensitas_air`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_solid_waste`
--
ALTER TABLE `report_solid_waste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabelkonversi2019`
--
ALTER TABLE `tabelkonversi2019`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabelkonversi2024`
--
ALTER TABLE `tabelkonversi2024`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_data`
--
ALTER TABLE `users_data`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1328;

--
-- AUTO_INCREMENT for table `energydata`
--
ALTER TABLE `energydata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `energysummary`
--
ALTER TABLE `energysummary`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report_accident`
--
ALTER TABLE `report_accident`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report_history`
--
ALTER TABLE `report_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `intensitas_air`
--
ALTER TABLE `intensitas_air`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `report_solid_waste`
--
ALTER TABLE `report_solid_waste`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tabelkonversi2019`
--
ALTER TABLE `tabelkonversi2019`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tabelkonversi2024`
--
ALTER TABLE `tabelkonversi2024`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
