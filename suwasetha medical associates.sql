-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2018 at 09:59 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suwasetha medical associates`
--

-- --------------------------------------------------------

--
-- Table structure for table `dependant`
--
use `suwasetha medical associates`;
CREATE TABLE `dependant` (
  `Employee_No` int(5) NOT NULL,
  `Dependant_Name` varchar(50) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `BirthDate` date NOT NULL,
  `Relationship` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_No` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Address` text NOT NULL,
  `Phone_No` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_No`, `Name`, `Gender`, `Address`, `Phone_No`) VALUES
(1, 'Dulangi Anuththara Gamage', 'Female', '100/50/A Seeduwa rd,Kotugoda', 766697385),
(2, 'Shashini Nilukshi', 'Female', '75A/Piris Road/Jaela', 777572471),
(3, 'Damiru Nimanth', 'Male', '25H/Temple Road/Ekala', 723424579),
(4, 'Bimasha Yeshini', 'Female', '45D/Perera Road/Kandana', 783512864),
(5, 'Nilakshi Kavishalya', 'Female', '101C/Halpe Street,Kandana', 783425647),
(6, 'Trevin Kavisha', 'Male', '106C/Alvis Road/Minuwangoda', 776548572),
(7, 'Sumal Iduwara', 'Male', '110A/Wigaya Road/Gampaha', 728924713),
(8, 'Ahinsa Perera', 'Female', '39D/Jayasiri Road/Ragama', 781435092),
(9, 'Pawan Hansana', 'Male', '112B/Fernando Road/Ganemulla', 713091613),
(10, 'Pasindu Lakshan', 'Male', '89D/Ranjith Road/Waththala', 777491852),
(11, 'Himaransi Dilanjali', 'Female', '102C/Silva Road/Maharagama', 776190274),
(12, 'Amisha Sewmini', 'Female', '67A/Jayagama Road/Maradana', 760149378),
(13, 'Oshada Madushan', 'Male', '104B/Rajasinha Road/Colombo 05', 775924196),
(14, 'Pawani Shehara', 'Female', '82C/Goratti Road/Makawita', 719505164),
(15, 'Tharuka Dilshan', 'Male', '120A/Jayasinha Road/Negambo', 778461042),
(16, 'Sandalu Kawshal', 'Male', '11A/Wijayasiri Road/Seeduwa', 777923914),
(17, 'Lishel Medavi', 'Female', '116B/Asiri Road/Raddalugama', 723953109),
(5836, 'Dulmeth Hesuka', 'Male', '79/A halpe mawath,kanadana', 112293010),
(5868, 'jayani', 'Female', '12/B,park rd,Rathmalana', 765843234),
(5869, 'Hasini Ishara', 'Female', 'Matara, weligama', 784636728);

-- --------------------------------------------------------

--
-- Table structure for table `illness`
--

CREATE TABLE `illness` (
  `Illness_Code` int(4) NOT NULL,
  `Illness_Name` varchar(20) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interaction`
--

CREATE TABLE `interaction` (
  `MedCode1` int(3) NOT NULL,
  `MedCode2` int(3) NOT NULL,
  `Severity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interaction`
--

INSERT INTO `interaction` (`MedCode1`, `MedCode2`, `Severity`) VALUES
(1, 3, 'should not take together');

-- --------------------------------------------------------

--
-- Table structure for table `in_patient`
--

CREATE TABLE `in_patient` (
  `Patient_No` int(5) NOT NULL,
  `NurseNo` int(5) DEFAULT NULL,
  `RoomNo` int(2) NOT NULL,
  `BedNo` int(2) NOT NULL,
  `NursingUnit` int(3) NOT NULL,
  `AdmitDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medcoparation`
--

CREATE TABLE `medcoparation` (
  `Coparation_Name` varchar(50) NOT NULL,
  `HeadQuaters` varchar(20) NOT NULL,
  `OwnInterest` varchar(10) NOT NULL,
  `OwnerId` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `MedicationCode` int(3) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `QuantityOnHand` int(3) NOT NULL,
  `QuantityOnOrder` int(3) NOT NULL,
  `UnitCost(Rs.)` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`MedicationCode`, `Name`, `QuantityOnHand`, `QuantityOnOrder`, `UnitCost(Rs.)`) VALUES
(1, 'Asprin', 100, 300, '2'),
(3, 'Aceclofena', 100, 200, '1');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `Employee_No` int(5) NOT NULL,
  `Grade` char(2) NOT NULL,
  `Salary` int(7) NOT NULL,
  `Surgery_Code` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`Employee_No`, `Grade`, `Salary`, `Surgery_Code`) VALUES
(1, 'A', 10, '0045'),
(17, 'B', 35000, '0046'),
(5868, 'A', 2500, '0045');

-- --------------------------------------------------------

--
-- Table structure for table `nurseskill`
--

CREATE TABLE `nurseskill` (
  `Employee_No` int(5) NOT NULL,
  `Skill_Code` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Owner_Id` int(4) NOT NULL,
  `OwnerPercent` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patientillness`
--

CREATE TABLE `patientillness` (
  `Patient_No` int(5) NOT NULL,
  `Illness_code` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patientmedical`
--

CREATE TABLE `patientmedical` (
  `Patient_No` int(5) NOT NULL,
  `BloodType` char(2) NOT NULL,
  `SugarLevel` int(11) NOT NULL,
  `CholestroelLevel` int(11) NOT NULL,
  `PrimaryPhysicNo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patientpersonel`
--

CREATE TABLE `patientpersonel` (
  `Patient_No` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Address` text NOT NULL,
  `Phone_No` int(10) NOT NULL,
  `BirthDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientpersonel`
--

INSERT INTO `patientpersonel` (`Patient_No`, `Name`, `Gender`, `Address`, `Phone_No`, `BirthDate`) VALUES
(3, 'sanjali nanayakkara', '', 'maharagamaga', 776548572, '1997-06-04'),
(4, 'sanjali nanayakkara', 'Female', 'maharagamaga', 776548572, '1997-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `patient_allergy`
--

CREATE TABLE `patient_allergy` (
  `Patient_No` int(5) NOT NULL,
  `Allergy` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE `physician` (
  `Employee_No` int(5) NOT NULL,
  `Speciality` varchar(30) NOT NULL,
  `Salary` int(8) NOT NULL,
  `OwnerId` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `Patient_No` int(5) NOT NULL,
  `Physician_No` int(5) NOT NULL,
  `Med_No` int(3) NOT NULL,
  `Dosage` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skill_required`
--

CREATE TABLE `skill_required` (
  `Skill_Code` int(4) NOT NULL,
  `Surgery_Code` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `support_staff`
--

CREATE TABLE `support_staff` (
  `Employee_No` int(5) NOT NULL,
  `Salary` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgeon`
--

CREATE TABLE `surgeon` (
  `Employee_No` int(5) NOT NULL,
  `Contract_Type` varchar(20) NOT NULL,
  `Contract_Lenght` date NOT NULL,
  `Speciality` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surgeon`
--

INSERT INTO `surgeon` (`Employee_No`, `Contract_Type`, `Contract_Lenght`, `Speciality`) VALUES
(2, 'normal', '2020-11-23', 'abdomen'),
(3, 'Normal', '0000-00-00', 'Abdomen'),
(5, 'Normal', '2028-12-30', 'Cardiologist');

-- --------------------------------------------------------

--
-- Table structure for table `surgerypeformance`
--

CREATE TABLE `surgerypeformance` (
  `Patient_No` int(5) NOT NULL,
  `Surgeon_No` int(5) NOT NULL,
  `Surgery_Code` char(4) NOT NULL,
  `Theartre` char(5) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgery_skill`
--

CREATE TABLE `surgery_skill` (
  `Skill_Code` int(4) NOT NULL,
  `Skill_Name` char(20) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgery_type`
--

CREATE TABLE `surgery_type` (
  `Surgery_code` char(4) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surgery_type`
--

INSERT INTO `surgery_type` (`Surgery_code`, `Name`, `Category`) VALUES
('0045', 'Hernia', 'Abdomen'),
('0046', 'Kidney Transplant', 'Abdomen');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` enum('doctor','surgeon','patient','nurse','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `type`) VALUES
(1, 'Damiru Nimanth', 'Damiru123', 'doctor'),
(2, 'Bimasha Yeshini', 'Bimasha123', 'patient'),
(3, 'Sumal Iduwara', 'Sumal123', 'surgeon'),
(4, 'Ahinsa Perera', 'Ahinsa123', 'nurse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dependant`
--
ALTER TABLE `dependant`
  ADD PRIMARY KEY (`Employee_No`,`Dependant_Name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_No`);

--
-- Indexes for table `illness`
--
ALTER TABLE `illness`
  ADD PRIMARY KEY (`Illness_Code`);

--
-- Indexes for table `interaction`
--
ALTER TABLE `interaction`
  ADD PRIMARY KEY (`MedCode1`,`MedCode2`),
  ADD KEY `MedCode2` (`MedCode2`);

--
-- Indexes for table `in_patient`
--
ALTER TABLE `in_patient`
  ADD PRIMARY KEY (`Patient_No`),
  ADD KEY `NurseNo` (`NurseNo`);

--
-- Indexes for table `medcoparation`
--
ALTER TABLE `medcoparation`
  ADD PRIMARY KEY (`Coparation_Name`),
  ADD KEY `OwnerId` (`OwnerId`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`MedicationCode`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`Employee_No`),
  ADD KEY `nurse_ibfk_2` (`Surgery_Code`);

--
-- Indexes for table `nurseskill`
--
ALTER TABLE `nurseskill`
  ADD PRIMARY KEY (`Employee_No`,`Skill_Code`),
  ADD KEY `nurseskill_ibfk_3` (`Skill_Code`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Owner_Id`),
  ADD KEY `Owner_Id` (`Owner_Id`);

--
-- Indexes for table `patientillness`
--
ALTER TABLE `patientillness`
  ADD PRIMARY KEY (`Patient_No`,`Illness_code`),
  ADD KEY `Illness_code` (`Illness_code`);

--
-- Indexes for table `patientmedical`
--
ALTER TABLE `patientmedical`
  ADD PRIMARY KEY (`Patient_No`),
  ADD KEY `PrimaryPhysicNo` (`PrimaryPhysicNo`);

--
-- Indexes for table `patientpersonel`
--
ALTER TABLE `patientpersonel`
  ADD PRIMARY KEY (`Patient_No`);

--
-- Indexes for table `patient_allergy`
--
ALTER TABLE `patient_allergy`
  ADD PRIMARY KEY (`Patient_No`,`Allergy`);

--
-- Indexes for table `physician`
--
ALTER TABLE `physician`
  ADD PRIMARY KEY (`Employee_No`),
  ADD KEY `OwnerId` (`OwnerId`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`Patient_No`,`Physician_No`,`Med_No`),
  ADD KEY `Med_No` (`Med_No`),
  ADD KEY `Physician_No` (`Physician_No`);

--
-- Indexes for table `skill_required`
--
ALTER TABLE `skill_required`
  ADD PRIMARY KEY (`Skill_Code`,`Surgery_Code`),
  ADD KEY `Surgery_Code` (`Surgery_Code`);

--
-- Indexes for table `support_staff`
--
ALTER TABLE `support_staff`
  ADD PRIMARY KEY (`Employee_No`);

--
-- Indexes for table `surgeon`
--
ALTER TABLE `surgeon`
  ADD PRIMARY KEY (`Employee_No`);

--
-- Indexes for table `surgerypeformance`
--
ALTER TABLE `surgerypeformance`
  ADD PRIMARY KEY (`Patient_No`,`Surgeon_No`,`Surgery_Code`),
  ADD KEY `Surgery_Code` (`Surgery_Code`),
  ADD KEY `surgerypeformance_ibfk_2` (`Surgeon_No`);

--
-- Indexes for table `surgery_skill`
--
ALTER TABLE `surgery_skill`
  ADD PRIMARY KEY (`Skill_Code`);

--
-- Indexes for table `surgery_type`
--
ALTER TABLE `surgery_type`
  ADD PRIMARY KEY (`Surgery_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5870;

--
-- AUTO_INCREMENT for table `illness`
--
ALTER TABLE `illness`
  MODIFY `Illness_Code` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `MedicationCode` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patientpersonel`
--
ALTER TABLE `patientpersonel`
  MODIFY `Patient_No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surgery_skill`
--
ALTER TABLE `surgery_skill`
  MODIFY `Skill_Code` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dependant`
--
ALTER TABLE `dependant`
  ADD CONSTRAINT `dependant_ibfk_1` FOREIGN KEY (`Employee_No`) REFERENCES `employee` (`Employee_No`);

--
-- Constraints for table `interaction`
--
ALTER TABLE `interaction`
  ADD CONSTRAINT `interaction_ibfk_1` FOREIGN KEY (`MedCode1`) REFERENCES `medication` (`MedicationCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `interaction_ibfk_2` FOREIGN KEY (`MedCode2`) REFERENCES `medication` (`MedicationCode`);

--
-- Constraints for table `in_patient`
--
ALTER TABLE `in_patient`
  ADD CONSTRAINT `in_patient_ibfk_2` FOREIGN KEY (`NurseNo`) REFERENCES `nurse` (`Employee_No`),
  ADD CONSTRAINT `in_patient_ibfk_3` FOREIGN KEY (`Patient_No`) REFERENCES `patientpersonel` (`Patient_No`);

--
-- Constraints for table `medcoparation`
--
ALTER TABLE `medcoparation`
  ADD CONSTRAINT `medcoparation_ibfk_1` FOREIGN KEY (`OwnerId`) REFERENCES `owner` (`Owner_Id`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_2` FOREIGN KEY (`Surgery_Code`) REFERENCES `surgery_type` (`Surgery_code`),
  ADD CONSTRAINT `nurse_ibfk_3` FOREIGN KEY (`Employee_No`) REFERENCES `employee` (`Employee_No`);

--
-- Constraints for table `nurseskill`
--
ALTER TABLE `nurseskill`
  ADD CONSTRAINT `nurseskill_ibfk_2` FOREIGN KEY (`Employee_No`) REFERENCES `nurse` (`Employee_No`) ON DELETE CASCADE,
  ADD CONSTRAINT `nurseskill_ibfk_3` FOREIGN KEY (`Skill_Code`) REFERENCES `surgery_skill` (`Skill_Code`) ON DELETE CASCADE;

--
-- Constraints for table `patientillness`
--
ALTER TABLE `patientillness`
  ADD CONSTRAINT `patientillness_ibfk_3` FOREIGN KEY (`Illness_code`) REFERENCES `illness` (`Illness_Code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `patientillness_ibfk_4` FOREIGN KEY (`Patient_No`) REFERENCES `patientpersonel` (`Patient_No`);

--
-- Constraints for table `patientmedical`
--
ALTER TABLE `patientmedical`
  ADD CONSTRAINT `patientmedical_ibfk_1` FOREIGN KEY (`Patient_No`) REFERENCES `patientpersonel` (`Patient_No`);

--
-- Constraints for table `patient_allergy`
--
ALTER TABLE `patient_allergy`
  ADD CONSTRAINT `patient_allergy_ibfk_1` FOREIGN KEY (`Patient_No`) REFERENCES `patientpersonel` (`Patient_No`);

--
-- Constraints for table `physician`
--
ALTER TABLE `physician`
  ADD CONSTRAINT `physician_ibfk_2` FOREIGN KEY (`OwnerId`) REFERENCES `owner` (`Owner_Id`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`Med_No`) REFERENCES `medication` (`MedicationCode`),
  ADD CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`Physician_No`) REFERENCES `physician` (`Employee_No`),
  ADD CONSTRAINT `prescription_ibfk_4` FOREIGN KEY (`Patient_No`) REFERENCES `patientpersonel` (`Patient_No`);

--
-- Constraints for table `skill_required`
--
ALTER TABLE `skill_required`
  ADD CONSTRAINT `skill_required_ibfk_2` FOREIGN KEY (`Surgery_Code`) REFERENCES `surgery_type` (`Surgery_code`),
  ADD CONSTRAINT `skill_required_ibfk_3` FOREIGN KEY (`Skill_Code`) REFERENCES `surgery_skill` (`Skill_Code`);

--
-- Constraints for table `surgeon`
--
ALTER TABLE `surgeon`
  ADD CONSTRAINT `surgeon_ibfk_1` FOREIGN KEY (`Employee_No`) REFERENCES `employee` (`Employee_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surgerypeformance`
--
ALTER TABLE `surgerypeformance`
  ADD CONSTRAINT `surgerypeformance_ibfk_3` FOREIGN KEY (`Surgery_Code`) REFERENCES `surgery_type` (`Surgery_code`),
  ADD CONSTRAINT `surgerypeformance_ibfk_4` FOREIGN KEY (`Patient_No`) REFERENCES `patientpersonel` (`Patient_No`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`Employee_No`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
