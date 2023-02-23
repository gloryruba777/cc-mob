-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Feb 23, 2023 at 05:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancerdetails`
--

CREATE TABLE `cancerdetails` (
  `id` int(11) NOT NULL,
  `cancerName` varchar(50) DEFAULT NULL,
  `Tmtype` varchar(5) DEFAULT NULL,
  `Ntype` varchar(5) DEFAULT NULL,
  `cancerStage` varchar(6) DEFAULT NULL,
  `survivalYear` varchar(10) DEFAULT NULL COMMENT '5 year/10 year',
  `survivalRate` varchar(10) DEFAULT NULL COMMENT '5 year / 10 year survive rate (%)',
  `link` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancerdetails`
--

INSERT INTO `cancerdetails` (`id`, `cancerName`, `Tmtype`, `Ntype`, `cancerStage`, `survivalYear`, `survivalRate`, `link`) VALUES
(1, 'Breast', 'T1', 'N0', 'IA', '5', '99%', 'https://www.cancer.gov/types/breast/patient/breast-treatment-pdq#section/_10'),
(2, 'Breast', 'T2a', 'N0', 'IB', '5', '88%', 'https://www.cancer.gov/types/breast/patient/breast-treatment-pdq#section/_121'),
(3, 'Breast', 'T2b', 'N0', 'IIA', '5', '93%', 'https://seer.cancer.gov/statfacts/html/breast.html#survival'),
(4, 'Breast', 'T3', 'N0', 'IIB', '5', '72%', 'https://www.cancer.gov/types/breast/hp/breast-survival-rates'),
(5, 'Breast', 'T4', 'N0', 'IIIA', '5', '72%', 'https://www.cancer.org/cancer/breast-cancer/treating/survival-rates.html'),
(6, 'Breast', 'M1a', 'N0', 'IVA', '5', '20 - 30%', 'https://www.cancer.gov/about-cancer/treatment/types/surgery/intravenous-injection-breast-cancer-treatment-fact-sheet#survival'),
(7, 'Breast', 'M1b', 'N0', 'IVA', '5', '5%', 'https://www.breastcancer.org/pathology-report/breast-cancer-stages'),
(8, 'Breast', 'M1c', 'N0', 'IVB', '5', '15%', 'https://www.cancer.org/cancer/breast-cancer/treatment/survival-rates-for-breast-cancer.html'),
(9, 'Cervix', 'T1', 'N0', ' IA', '5', '92%', 'https://www.cancer.gov/publications/dictionaries/cancer-terms/def/stage-i-cervical-cancer'),
(10, 'Cervix', 'T2a', 'N0', 'IB', '5', '83%', 'https://www.cancer.gov/publications/dictionaries/cancer-terms/def/stage-i-cervical-cancer'),
(11, 'Cervix', 'T2b', 'N0', 'IIA', '5', '90%', 'https://www.cancer.gov/types/cervical/patient/cervical-treatment-pdq#section/_46'),
(12, 'Cervix', 'T3', 'N0', 'IIB', '5', '59%', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7759090/#:~:text=The%205%2Dyear%20survival%20rate,approximately%2080%25%20%5B5%5D.'),
(13, 'Cervix', 'T4', 'N0', 'IIIA', '5', '57%', 'https://www.cancer.org/cancer/cervical-cancer/treating/by-stage.html'),
(14, 'Cervix', 'M1a', 'N0', 'IVA', '5', '50%', 'https://www.cancer.gov/publications/dictionaries/cancer-terms/def/stage-iv-cervical-cancer'),
(15, 'Cervix', 'M1b', 'N0', 'IVA', '5', '33%', 'https://www.cancer.org/cancer/cervical-cancer/about/key-statistics.html'),
(16, 'Cervix', 'M1c', 'N0', 'IVB', '5', '0 - 20%', 'https://www.cancer.org/cancer/cervical-cancer/detection-diagnosis-staging/survival.html'),
(17, 'Ovary', 'T1', 'N0', 'IA', '5', '92%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(18, 'Ovary', 'T2a', 'N0', 'IB', '5', '47%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(19, 'Ovary', 'T2b', 'N0', 'IIA', '5', '91%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(20, 'Ovary', 'T3', 'N0', 'IIB', '5', '63%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(21, 'Ovary', 'T4', 'N0', 'IIIA', '5', '54%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(22, 'Ovary', 'M1a', 'N0', 'IVA', '5', '17%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(23, 'Ovary', 'M1b', 'N0', 'IVA', '5', '40%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/staging.html'),
(24, 'Ovary', 'M1c', 'N0', 'IVB', '5', '17%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(25, 'Breast', 'T1', 'N1', 'IIB', '5', '35 - 50%', 'https://seer.cancer.gov/statfacts/html/breast.html#Five-Year-Relative-Survival-Rates-By-Stage-At-Diagnosis'),
(26, 'Breast', 'T2a', 'N1', 'IIB', '5', '80 - 85%', 'https://www.cancer.gov/types/breast/patient/breast-treatment-pdq#section/_7'),
(27, 'Breast', 'T2b', 'N1', 'IIB', '5', '75% - 80%', 'https://www.cancer.gov/types/breast/patient/breast-treatment-pdq#section/_33'),
(28, 'Breast', 'T3', 'N1', 'IIIA', '5', '74%', 'https://seer.cancer.gov/statfacts/html/breast.html'),
(29, 'Breast', 'T4', 'N1', 'IIIA', '5', '65%', 'https://www.cancer.org/cancer/breast-cancer/understanding-a-breast-cancer-diagnosis/breast-cancer-survival-rates.html'),
(30, 'Breast', 'M1a', 'N1', 'IVA', '5', '10%', 'https://www.cancer.org/cancer/breast-cancer/understanding-a-breast-cancer-diagnosis/breast-cancer-survival-rates.html'),
(31, 'Breast', 'M1b', 'N1', 'IVA', '5', '22%', 'https://gco.iarc.fr/today/data/factsheets/cancers/20-Breast-fact-sheet.pdf'),
(32, 'Breast', 'M1c', 'N1', 'IVB', '5', '20%', 'https://www.cancerresearchuk.org/about-cancer/what-is-cancer/stages-of-cancer'),
(33, 'Cervix', 'T1', 'N1', 'IIB', '5', '67%', 'https://screening.iarc.fr/atlasclassiftnm.php'),
(34, 'Cervix', 'T2a', 'N1', 'IIB', '5', '63%', 'https://www.cancer.gov/types/cervical/treatment'),
(35, 'Cervix', 'T2b', 'N1', 'IIB', '5', '69%', 'https://www.cancer.gov/types/cervical/treatment#section/_5'),
(36, 'Cervix', 'T3', 'N1', 'IIIA', '5', '67%', 'https://www.cancer.org/cancer/cervical-cancer/detection-diagnosis-staging/staged.html'),
(37, 'Cervix', 'T4', 'N1', 'IIIA', '5', '56%', 'https://www.cancer.org/cancer/cervical-cancer/detection-diagnosis-staging/staged.html'),
(38, 'Cervix', 'M1a', 'N1', 'IVA', '5', '29%', 'https://www.sciencedirect.com/science/article/pii/S0022522399700607'),
(39, 'Cervix', 'M1b', 'N1', 'IVA', '5', '43%', 'https://pubmed.ncbi.nlm.nih.gov/21420157/'),
(40, 'Cervix', 'M1c', 'N1', 'IVB', '5', '17%', 'https://pubmed.ncbi.nlm.nih.gov/27643648/'),
(41, 'Ovary', 'T1', 'N1', 'IIB', '5', '40%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(42, 'Ovary', 'T2a', 'N1', 'IIB', '5', '47%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(43, 'Ovary', 'T2b', 'N1', 'IIB', '5', '50%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(44, 'Ovary', 'T3', 'N1', 'IIIA', '5', '46%', 'https://www.cancer.org/cancer/cervical-cancer/detection-diagnosis-staging/staged.html'),
(45, 'Ovary', 'T4', 'N1', 'IIIA', '5', '45%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/staging.html'),
(46, 'Ovary', 'M1a', 'N1', 'IVA', '5', '36%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(47, 'Ovary', 'M1b', 'N1', 'IVA', '5', '17%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(48, 'Ovary', 'M1c', 'N1', 'IVB', '5', '10 -15%', 'https://www.cancer.net/cancer-types/cervical-cancer/stages'),
(49, 'Breast', 'T1', 'N2', 'IIIA', '5', '80%', 'https://www.cancer.gov/types/breast/hp/breast-treatment-pdq'),
(50, 'Breast', 'T2a', 'N2', 'IIIA', '5', '72%', 'https://www.cancer.org/cancer/breast-cancer/understanding-a-breast-cancer-diagnosis/breast-cancer-survival-rates.html'),
(51, 'Breast', 'T2b', 'N2', 'IIIA', '5', '79%', 'https://www.cancer.org/cancer/breast-cancer.html'),
(52, 'Breast', 'T3', 'N2', 'IIIB', '5', '72%', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6373937/'),
(53, 'Breast', 'T4', 'N2', 'IIIB', '5', '72%', 'https://www.cancer.org/cancer/breast-cancer/understanding-a-breast-cancer-diagnosis/breast-cancer-survival-rates.html'),
(54, 'Breast', 'M1a', 'N2', 'IVA', '5', '22%', 'https://www.cancer.net/cancer-types/breast-cancer/stages'),
(55, 'Breast', 'M1b', 'N2', 'IVA', '5', '11%', 'https://www.cancer.gov/types/breast/patient/breast-treatment-pdq#section/_271'),
(56, 'Breast', 'M1c', 'N2', 'IVB', '5', '22%', 'https://www.cancer.net/cancer-types/breast-cancer/stages'),
(57, 'Cervix', 'T1', 'N2', 'IIIA', '5', '70%', 'https://www.cancer.org/cancer/cervical-cancer/about/key-statistics.html'),
(58, 'Cervix', 'T2a', 'N2', 'IIIA', '5', '61%', 'https://emedicine.medscape.com/article/2006486-overview'),
(59, 'Cervix', 'T2b', 'N2', 'IIIA', '5', '65%', 'https://acsjournals.onlinelibrary.wiley.com/doi/full/10.1002/cncr.11449'),
(60, 'Cervix', 'T3', 'N2', 'IIIB', '5', '57%', 'https://www.cancer.org/cancer/cervical-cancer/about/key-statistics.html'),
(61, 'Cervix', 'T4', 'N2', 'IIIB', '5', '50%', 'https://www.cancer.org/cancer/cervical-cancer/about/key-statistics.html'),
(62, 'Cervix', 'M1a', 'N2', 'IVA', '5', '55%', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7267620/'),
(63, 'Cervix', 'M1b', 'N2', 'IVA', '5', '52.50%', 'https://www.cancer.gov/publications/dictionaries/cancer-terms/def/stage-iv-cervical-cancer'),
(64, 'Cervix', 'M1c', 'N2', 'IVB', '5', '10%', 'https://pubmed.ncbi.nlm.nih.gov/27643648/'),
(65, 'Ovary', 'T1', 'N2', 'IIIA', '5', '46%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(66, 'Ovary', 'T2a', 'N2', 'IIIA', '5', '46%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(67, 'Ovary', 'T2b', 'N2', 'IIIA', '5', '46%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(68, 'Ovary', 'T3', 'N2', 'IIIB', '5', '50%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(69, 'Ovary', 'T4', 'N2', 'IIIB', '5', '58.20%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(70, 'Ovary', 'M1a', 'N2', 'IVA', '5', '36%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(71, 'Ovary', 'M1b', 'N2', 'IVA', '5', '44%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(72, 'Ovary', 'M1c', 'N2', 'IVB', '5', '17%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/survival-rates.html'),
(73, 'Breast', 'T1', 'N3', 'IIIB', '5', '77%', 'https://www.cancer.org/cancer/breast-cancer/understanding-a-breast-cancer-diagnosis/stages-of-breast-cancer.html'),
(74, 'Breast', 'T2a', 'N3', 'IIIB', '5', '71%', 'https://www.cancer.org/cancer/breast-cancer/understanding-a-breast-cancer-diagnosis/stages-of-breast-cancer.html'),
(75, 'Breast', 'T2b', 'N3', 'IIIB', '5', '71%', 'https://www.cancer.gov/types/breast/patient/breast-treatment-pdq#section/all'),
(76, 'Breast', 'T3', 'N3', 'IIIC', '5', '72%', 'https://www.cancer.gov/types/breast/patient/breast-treatment-pdq'),
(77, 'Breast', 'T4', 'N3', 'IIIC', '5', '72%', 'https://www.cancer.net/cancer-types/breast-cancer/stages'),
(78, 'Breast', 'M1a', 'N3', 'IVA', '10', '56%', 'https://ncbi.nlm.nih.gov/pmc/articles/PMC5059408/#'),
(79, 'Breast', 'M1b', 'N3', 'IVA', '5', '20 - 30%', 'https://www.cancer.org/cancer/breast-cancer/understanding-a-breast-cancer-diagnosis/stages-of-breast-cancer.html'),
(80, 'Breast', 'M1c', 'N3', 'IVB', '5', '15%', 'https://www.cancer.gov/types/breast/hp/breast-treatment-pdq#_1'),
(81, 'Cervix', 'T1', 'N3', 'IIIB', '5', '54%', 'https://www.cancer.gov/types/cervical/survival'),
(82, 'Cervix', 'T2a', 'N3', 'IIIB', '5', '44%', 'https://www.cancer.gov/types/cervical/survival'),
(83, 'Cervix', 'T2b', 'N3', 'IIIB', '5', '63%', 'https://www.cancer.org/cancer/cervical-cancer/detection-diagnosis-staging/survival.html'),
(84, 'Cervix', 'T3', 'N3', 'IIIC', '5', '69%', 'https://www.cancer.org/cancer/cervical-cancer/detection-diagnosis-staging/survival.html'),
(85, 'Cervix', 'T4', 'N3', 'IIIC', '5', '61.70%', 'https://www.cancer.gov/types/cervical/treatment#section/all/2'),
(86, 'Cervix', 'M1a', 'N3', 'IVA', '5', '20 - 50 %', 'https://seer.cancer.gov/statfacts/html/cervix.html'),
(87, 'Cervix', 'M1b', 'N3', 'IVA', '5', '68%', 'https://www.cancer.org/cancer/cervical-cancer/detection-diagnosis-staging/survival.html'),
(88, 'Cervix', 'M1c', 'N3', 'IVB', '5', '18%', 'https://www.cancer.org/cancer/cervical-cancer/detection-diagnosis-staging/survival.html'),
(89, 'Ovary', 'T1', 'N3', 'IIIB', '5', '35%', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3109020/'),
(90, 'Ovary', 'T2a', 'N3', 'IIIB', '5', '32%', 'https://seer.cancer.gov/statfacts/html/ovary.html'),
(91, 'Ovary', 'T2b', 'N3', 'IIIB', '5', '40%', 'https://www.cancer.gov/types/ovarian'),
(92, 'Ovary', 'T3', 'N3', 'IIIC', '5', '40%', 'https://worldovariancancercoalition.org/about-ovarian-cancer/symptoms-risk-factors/ovarian-cancer-symptoms/?gclid=EAIaIQobChMI7tPgsJGP_QIV1gorCh3kyQAAEAAYASAAEgJ1ifD_BwE'),
(93, 'Ovary', 'T4', 'N3', 'IIIC', '5', '46%', 'https://www.cancer.gov/types/ovarian/patient/ovarian-germ-cell-treatment-pdq'),
(94, 'Ovary', 'M1a', 'N3', 'IVA', '5', '20%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/staging.html'),
(95, 'Ovary', 'M1b', 'N3', 'IVA', '5', '17%', 'https://www.cancer.org/cancer/ovarian-cancer/detection-diagnosis-staging/staging.html'),
(96, 'Ovary', 'M1c', 'N3', 'IVB', '5', '31%', 'https://www.cancerresearchuk.org/about-cancer/ovarian-cancer/stages-grades/stage-4#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancerdetails`
--
ALTER TABLE `cancerdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancerdetails`
--
ALTER TABLE `cancerdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
