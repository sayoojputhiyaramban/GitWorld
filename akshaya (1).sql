-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2018 at 12:40 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `akshaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `association`
--

CREATE TABLE IF NOT EXISTS `association` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `asid` int(11) NOT NULL,
  `username` varchar(220) NOT NULL,
  `password` varchar(220) NOT NULL,
  PRIMARY KEY (`asid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE IF NOT EXISTS `attendence` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `atid` varchar(220) NOT NULL,
  `empid` int(11) NOT NULL,
  `logintime` datetime NOT NULL,
  `type` varchar(220) NOT NULL,
  `location` varchar(220) NOT NULL,
  `logouttime` datetime NOT NULL,
  PRIMARY KEY (`atid`),
  UNIQUE KEY `empid_2` (`empid`),
  KEY `empid` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`d&t`, `centercode`, `atid`, `empid`, `logintime`, `type`, `location`, `logouttime`) VALUES
('2018-12-20', '112', '1', 3, '2018-12-20 00:11:00', 'sdasd', 'asdad', '2018-12-19 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `bank_id` varchar(220) NOT NULL,
  `counter_id` varchar(220) NOT NULL,
  `bank_name` varchar(220) NOT NULL,
  `account_no` varchar(220) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`bank_id`),
  UNIQUE KEY `counter_id` (`counter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `black_list`
--

CREATE TABLE IF NOT EXISTS `black_list` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `bid` varchar(220) NOT NULL,
  `empid` int(11) NOT NULL,
  `reason` varchar(220) NOT NULL,
  `status` varchar(220) NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `empid` (`empid`),
  KEY `empid_2` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `black_list`
--

INSERT INTO `black_list` (`d&t`, `centercode`, `bid`, `empid`, `reason`, `status`) VALUES
('2018-12-01', '112', '1', 3, 'jhjh', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `cash_in_hand`
--

CREATE TABLE IF NOT EXISTS `cash_in_hand` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `cashhd` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  `counter_id` varchar(220) NOT NULL,
  `transaction_id` varchar(220) NOT NULL,
  PRIMARY KEY (`cashhd`),
  UNIQUE KEY `d&t` (`d&t`),
  UNIQUE KEY `counter_id` (`counter_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  UNIQUE KEY `empid` (`empid`),
  UNIQUE KEY `empid_2` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `type_id` varchar(220) NOT NULL,
  `type_category` varchar(220) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `counter_id` varchar(220) NOT NULL,
  `empid` int(11) NOT NULL,
  `transaction_type` varchar(220) NOT NULL,
  `amount` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`counter_id`),
  UNIQUE KEY `empid` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_reg`
--

CREATE TABLE IF NOT EXISTS `customer_reg` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `tockenid` varchar(220) NOT NULL,
  `name` varchar(220) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(220) NOT NULL,
  `housename` varchar(220) NOT NULL,
  `address` varchar(220) NOT NULL,
  `item` varchar(220) NOT NULL,
  PRIMARY KEY (`tockenid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_reg`
--

INSERT INTO `customer_reg` (`d&t`, `centercode`, `tockenid`, `name`, `mobile`, `email`, `housename`, `address`, `item`) VALUES
('2018-12-19', '112', '1', 'aa', 3333333333, '', 'frg', 'dgsfh', 'dgrth');

-- --------------------------------------------------------

--
-- Table structure for table `customer_status`
--

CREATE TABLE IF NOT EXISTS `customer_status` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `statusid` varchar(220) NOT NULL,
  `tockenid` varchar(220) NOT NULL,
  `status` varchar(220) NOT NULL,
  PRIMARY KEY (`statusid`),
  UNIQUE KEY `tockenid` (`tockenid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `d&t` datetime NOT NULL,
  `centercode` varchar(20) NOT NULL,
  `did` int(11) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `service` varchar(50) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deposite`
--

CREATE TABLE IF NOT EXISTS `deposite` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `depositeid` varchar(220) NOT NULL,
  `counterid` varchar(220) NOT NULL,
  `accountno` varchar(220) NOT NULL,
  `bankid` varchar(220) NOT NULL,
  `balance` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`depositeid`),
  UNIQUE KEY `counterid` (`counterid`),
  UNIQUE KEY `accountno` (`accountno`),
  UNIQUE KEY `bankid` (`bankid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `responseno` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `feedback` varchar(220) NOT NULL,
  PRIMARY KEY (`responseno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gst`
--

CREATE TABLE IF NOT EXISTS `gst` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `gstid` int(11) NOT NULL,
  `tid` varchar(220) NOT NULL,
  `empid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  UNIQUE KEY `tid` (`tid`),
  UNIQUE KEY `empid` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `d&t` datetime NOT NULL,
  `centercode` varchar(20) NOT NULL,
  `itemid` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `service_charge` varchar(20) NOT NULL,
  `bank_charge` int(11) NOT NULL,
  `gst` int(11) DEFAULT NULL,
  `total_amount` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan_payment`
--

CREATE TABLE IF NOT EXISTS `loan_payment` (
  `d&t` datetime NOT NULL,
  `centercode` varchar(20) NOT NULL,
  `loanid` int(11) NOT NULL,
  `accno` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `interest_paid` int(11) NOT NULL,
  `balance_amount` int(11) NOT NULL,
  PRIMARY KEY (`loanid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `messageid` varchar(220) NOT NULL,
  `tockenid` varchar(220) NOT NULL,
  `item` varchar(220) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(220) NOT NULL,
  PRIMARY KEY (`messageid`),
  UNIQUE KEY `tockenid_2` (`tockenid`),
  KEY `tockenid` (`tockenid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`d&t`, `centercode`, `messageid`, `tockenid`, `item`, `phone`, `email`) VALUES
('2018-12-19', '112', '5', '1', 'dgrth', 8943932518, 'athmajoseph');

-- --------------------------------------------------------

--
-- Table structure for table `payement`
--

CREATE TABLE IF NOT EXISTS `payement` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `payement` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  `salaryid` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `increment/decrement` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`payement`),
  UNIQUE KEY `empid` (`empid`),
  UNIQUE KEY `salaryid` (`salaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `rid` varchar(220) NOT NULL,
  `dtrated` varchar(220) NOT NULL,
  `rate` varchar(220) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE IF NOT EXISTS `salary` (
  `d&t` datetime NOT NULL,
  `centercode` varchar(20) NOT NULL,
  `salaryid` int(11) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `da` int(11) NOT NULL,
  `hra` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `ba` int(11) NOT NULL,
  PRIMARY KEY (`salaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave`
--

CREATE TABLE IF NOT EXISTS `staff_leave` (
  `d&t` date NOT NULL,
  `center_code` varchar(20) NOT NULL,
  `leaverid` varchar(20) NOT NULL,
  `empid` int(11) NOT NULL,
  `leave_type` varchar(220) NOT NULL,
  `reason` varchar(220) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`leaverid`),
  KEY `empid_2` (`empid`),
  KEY `empid_3` (`empid`),
  KEY `empid` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_leave`
--

INSERT INTO `staff_leave` (`d&t`, `center_code`, `leaverid`, `empid`, `leave_type`, `reason`, `from`, `to`, `status`) VALUES
('2018-12-20', '112', '11', 3, 'jkhkj', 'jhjh', '2018-12-04', '2018-12-26', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `staff_reg`
--

CREATE TABLE IF NOT EXISTS `staff_reg` (
  `d&t` date NOT NULL,
  `centercode` varchar(20) NOT NULL,
  `empid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `photo` blob NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `salary` int(10) NOT NULL,
  `martial_status` varchar(10) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `cpassword` varchar(10) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_reg`
--

INSERT INTO `staff_reg` (`d&t`, `centercode`, `empid`, `firstname`, `lastname`, `photo`, `phone`, `address`, `email`, `gender`, `designation`, `grade`, `salary`, `martial_status`, `blood_group`, `qualification`, `experience`, `password`, `cpassword`) VALUES
('2018-12-19', '112', 3, 'fdf', 'gfgf', '', '8943932518', 'aafdsgfdgfdgh', 'athmajoseph', 'f', 'bnb', 'vnbvjb ', 55555, 'm', 'o', 'bjn', 'mmnjjn', 'nb nmmmnbm', 'mnbnm '),
('2018-12-01', '112', 18, 'qqqqqqqq', 'gfgh', '', '8943932518', 'aafdsgfdgfdgh', 'athmajoseph', 'f', 'bnb', 'nmnk', 55555, 'hgh', 'jhlih', 'bjn', 'mmnjjn', 'nb nmmmnbm', 'mnbnm ');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `tid` varchar(220) NOT NULL,
  `itemid` int(11) NOT NULL,
  `counterid` varchar(220) NOT NULL,
  `typeid` varchar(220) NOT NULL,
  `qty` int(11) NOT NULL,
  `recipent/payement` int(11) NOT NULL,
  `bank/wallet` varchar(220) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `itemid` (`itemid`),
  UNIQUE KEY `counterid` (`counterid`),
  UNIQUE KEY `typeid` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vle`
--

CREATE TABLE IF NOT EXISTS `vle` (
  `d&t` date NOT NULL,
  `centercode` varchar(220) NOT NULL,
  `vidp` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `oldpwd` varchar(220) NOT NULL,
  `newpwd` varchar(220) NOT NULL,
  PRIMARY KEY (`vidp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE IF NOT EXISTS `wallet` (
  `d&t` datetime NOT NULL,
  `centercode` varchar(20) NOT NULL,
  `wid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `wname` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `bank_name` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`wid`),
  UNIQUE KEY `did` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendence`
--
ALTER TABLE `attendence`
  ADD CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `staff_reg` (`empid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bank`
--
ALTER TABLE `bank`
  ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`counter_id`) REFERENCES `counter` (`counter_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `black_list`
--
ALTER TABLE `black_list`
  ADD CONSTRAINT `black_list_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `staff_reg` (`empid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cash_in_hand`
--
ALTER TABLE `cash_in_hand`
  ADD CONSTRAINT `cash_in_hand_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_in_hand_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `staff_reg` (`empid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_in_hand_ibfk_2` FOREIGN KEY (`counter_id`) REFERENCES `counter` (`counter_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counter`
--
ALTER TABLE `counter`
  ADD CONSTRAINT `counter_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `staff_reg` (`empid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_status`
--
ALTER TABLE `customer_status`
  ADD CONSTRAINT `customer_status_ibfk_1` FOREIGN KEY (`tockenid`) REFERENCES `customer_reg` (`tockenid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deposite`
--
ALTER TABLE `deposite`
  ADD CONSTRAINT `deposite_ibfk_2` FOREIGN KEY (`bankid`) REFERENCES `bank` (`bank_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposite_ibfk_1` FOREIGN KEY (`counterid`) REFERENCES `counter` (`counter_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gst`
--
ALTER TABLE `gst`
  ADD CONSTRAINT `gst_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `transaction` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gst_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `staff_reg` (`empid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`tockenid`) REFERENCES `customer_reg` (`tockenid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payement`
--
ALTER TABLE `payement`
  ADD CONSTRAINT `payement_ibfk_2` FOREIGN KEY (`salaryid`) REFERENCES `salary` (`salaryid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payement_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `staff_reg` (`empid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_leave`
--
ALTER TABLE `staff_leave`
  ADD CONSTRAINT `staff_leave_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `staff_reg` (`empid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`typeid`) REFERENCES `category` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`counterid`) REFERENCES `counter` (`counter_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`did`) REFERENCES `department` (`did`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
