-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2019 at 01:33 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 
--

-- --------------------------------------------------------

--
-- Table structure for table `orrs_admin`
--

--CREATE TABLE `orrs_admin` (
 -- `admin_id` int(20) NOT NULL,
  --`admin_fname` varchar(200) NOT NULL,
  --`admin_lname` varchar(200) NOT NULL,
  --`admin_email` varchar(200) NOT NULL,
  --`admin_uname` varchar(200) NOT NULL,
  --`admin_pwd` varchar(200) NOT NULL,
  --`admin_dpic` varchar(60) NOT NULL
--) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_admin`
--

--INSERT INTO `orrs_admin` (`admin_id`, `admin_fname`, `admin_lname`, `admin_email`, `admin_uname`, `admin_pwd`, `admin_dpic`) VALUES
--(1, 'System ', 'Admin', 'admin@orrs.com', 'Administrator', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'avatar-150.png');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_employee`
--

CREATE TABLE `orrs_employee` (
  `emp_id` int(20) NOT NULL,
  `emp_fname` varchar(200) NOT NULL,
  `emp_lname` varchar(200) NOT NULL,
  `emp_nat_idno` varchar(200) NOT NULL,
  `emp_phone` varchar(200) NOT NULL,
  `emp_addr` varchar(200) NOT NULL,
  `emp_uname` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_pwd` varchar(200) NOT NULL,
  `emp_dpic` varchar(200) NOT NULL,
  `emp_dept` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_employee`
--

INSERT INTO `orrs_employee` (`emp_id`, `emp_fname`, `emp_lname`, `emp_nat_idno`, `emp_phone`, `emp_addr`, `emp_uname`, `emp_email`, `emp_pwd`, `emp_dpic`, `emp_dept`)
VALUES
(1, 'Ravi', 'Kumar', '123456789', '1234567890', '123 Main St, Anytown USA', 'jdoe', 'jdoe@example.com', 'password123', 'jdoe.jpg', 'Ticketing'),
(2, 'Priya', 'Singh', '987654321', '0987654321', '456 Maple Ave, Anytown USA', 'jsmith', 'jsmith@example.com', 'password456', 'jsmith.jpg', 'Operations'),
(3, 'Rajesh ', 'Patel', '456789012', '2345678901', '789 Oak St, Anytown USA', 'bjohnson', 'bjohnson@example.com', 'password789', 'bjohnson.jpg', 'Maintenance'),
(4, 'Neha', 'Sharma', '789012345', '3456789012', '321 Pine St, Anytown USA', 'awilliams', 'awilliams@example.com', 'passwordabc', 'awilliams.jpg', 'HR'),
(5, 'Sandeep','Verma', '234567890', '4567890123', '654 Cedar St, Anytown USA', 'tbrown', 'tbrown@example.com', 'passworddef', 'tbrown.jpg', 'IT'),
(6, 'Anjali','Gupta', '901234567', '5678901234', '987 Elm St, Anytown USA', 'edavis', 'edavis@example.com', 'passwordeg', 'edavis.jpg', 'Marketing'),
(7, 'Alok','Tiwari', '345678901', '6789012345', '753 Oakwood Dr, Anytown USA', 'mwilson', 'mwilson@example.com', 'passwordhij', 'mwilson.jpg', 'Finance'),
(8, 'Kavita', 'Choudhary', '678901234', '7890123456', '2468 Main St, Anytown USA', 'smiller', 'smiller@example.com', 'passwordklm', 'smiller.jpg', 'Sales'),
(9, 'Vikas', 'Dubey', '012345678', '8901234567', '369 Maple St, Anytown USA', 'dtaylor', 'dtaylor@example.com', 'passwordnop', 'dtaylor.jpg', 'Customer Service'),
(10, 'Sunita', 'Reddy', '345678901', '0123456789', '987 Elmwood Ave, Anytown USA', 'kjones', 'kjones@example.com', 'passwordqrs', 'kjones.jpg', 'Security');


-- --------------------------------------------------------

--
-- Table structure for table `orrs_passenger`
--

CREATE TABLE `orrs_passenger` (
  `pass_id` int(20) NOT NULL,
  `pass_fname` varchar(200) NOT NULL,
  `pass_lname` varchar(200) NOT NULL,
  `pass_phone` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_pwd` varchar(200) NOT NULL,
  `pass_dpic` varchar(200) NOT NULL,
  `pass_uname` varchar(200) NOT NULL,
  `pass_bday` varchar(200) NOT NULL,
  `pass_bio` longtext NOT NULL,
  `pass_train_number` varchar(200) NOT NULL,
  `pass_train_name` varchar(200) NOT NULL,
  `pass_dep_station` varchar(200) NOT NULL,
  `pass_dep_time` varchar(200) NOT NULL,
  `pass_arr_station` varchar(200) NOT NULL,
  `pass_train_fare` varchar(200) NOT NULL,
  `pass_fare_payment_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orrs_passwordresets`
--

CREATE TABLE `orrs_passwordresets` (
  `pwd_id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_passwordresets`
--

INSERT INTO `orrs_passwordresets` (`pwd_id`, `email`, `status`) VALUES
(1, 'martdevelopers254@gmail.com', 'Approved'),
(2, 'martinezmbithi@gmail.com', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train`
--

CREATE TABLE `orrs_train` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `current` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `passengers` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `fare` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_train`
--

INSERT INTO `orrs_train` (`id`, `name`, `route`, `current`, `destination`, `time`, `passengers`, `number`, `fare`) 
VALUES (1, 'Rajdhani Express', 'Delhi to Mumbai', 'Delhi', 'Mumbai', '10:00 AM', '200', '12345', '1500'),
       (2, 'Shatabdi Express', 'Chennai to Bangalore', 'Chennai', 'Bangalore', '2:30 PM', '150', '54321', '800'),
       (3, 'Duronto Express', 'Kolkata to Mumbai', 'Kolkata', 'Mumbai', '8:00 PM', '300', '98765', '2000');
       (4,'Chennai Express', 'Chennai to Delhi', 'Chennai', 'Delhi', '06:00 AM', '250', '45678', '2000'),
       (5,'Coromandel Express', 'Chennai to Howrah', 'Chennai', 'Howrah', '11:45 AM', '180', '23456', '1500'),
       (6,'Grand Trunk Express', 'Chennai to New Delhi', 'Chennai', 'New Delhi', '09:30 PM', '300', '87654', '2500');
       (7,'Gatimaan Express', 'Delhi to Agra', 'Delhi', 'Agra', '08:00 AM', '150', '56789', '1000'),
       (8,'Deccan Queen Express', 'Mumbai to Pune', 'Mumbai', 'Pune', '07:15 AM', '200', '87654', '800'),
       (9,'Konkan Kanya Express', 'Mumbai to Madgaon', 'Mumbai', 'Madgaon', '10:00 PM', '250', '34567', '1200'),
       (10,'Jammu Tawi Express', 'Jammu Tawi to New Delhi', 'Jammu Tawi', 'New Delhi', '05:00 PM', '300', '78901', '1800'),
       (11,'Howrah Rajdhani Express', 'Howrah to New Delhi', 'Howrah', 'New Delhi', '04:30 PM', '150', '12345', '2000');
       (12,'Humsafar Express', 'Puri to Anand Vihar', 'Puri', 'Anand Vihar', '08:30 PM', '200', '23456', '1500'),
       (13,'Rajdhani Express', 'Bhubaneswar to New Delhi', 'Bhubaneswar', 'New Delhi', '09:00 PM', '300', '34567', '2000'),
       (14,'Jhelum Express', 'Pune to Jammu Tawi', 'Pune', 'Jammu Tawi', '10:30 PM', '250', '45678', '1800'),
       (15,'Karnataka Express', 'Bangalore to New Delhi', 'Bangalore', 'New Delhi', '06:30 PM', '200', '56789', '2500'),
       (16,'Mangalore Express', 'Mangalore to Chennai', 'Mangalore', 'Chennai', '02:00 PM', '150', '67890', '1200');
       (17,'Shatabdi Express', 'Chennai to Bangalore', 'Chennai', 'Bangalore', '06:00 AM', '150', '78901', '1000'),
       (18,'Duronto Express', 'Kolkata to Mumbai', 'Kolkata', 'Mumbai', '08:30 PM', '250', '89012', '2200'),
       (19,'Gujarat Mail', 'Mumbai to Ahmedabad', 'Mumbai', 'Ahmedabad', '11:00 PM', '200', '90123', '800'),
       (20,'Purushottam Express', 'Puri to New Delhi', 'Puri', 'New Delhi', '07:00 PM', '300', '01234', '1900'),
       (21,'Tamil Nadu Express', 'New Delhi to Chennai', 'New Delhi', 'Chennai', '10:00 PM', '200', '45678', '1800');



-- --------------------------------------------------------

--
-- Table structure for table `orrs_train_tickets`
--

CREATE TABLE `orrs_train_tickets` (
  `ticket_id` int(20) NOT NULL,
  `pass_name` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `train_no` varchar(200) NOT NULL,
  `train_dep_stat` varchar(200) NOT NULL,
  `train_arr_stat` varchar(200) NOT NULL,
  `train_fare` varchar(200) NOT NULL,
  `fare_payment_code` varchar(200) NOT NULL,
  `confirmation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_train_tickets`
--

INSERT INTO `orrs_train_tickets` (`ticket_id`, `pass_name`, `pass_email`, `pass_addr`, `train_name`, `train_no`, `train_dep_stat`, `train_arr_stat`, `train_fare`, `fare_payment_code`, `confirmation`) VALUES
(1, 'John Doe', 'johndoe@example.com', '123 Main St, Anytown', 'Rajdhani Express', '12345', 'Delhi', 'Mumbai', '1500', 'PAY123', 'CONFIRMED'),
(2, 'Jane Smith', 'janesmith@example.com', '456 Elm St, Anytown', 'Shatabdi Express', '54321', 'Chennai', 'Bangalore', '800', 'PAY456', 'CONFIRMED'),
(3, 'Bob Johnson', 'bobjohnson@example.com', '789 Oak St, Anytown', 'Duronto Express', '98765', 'Kolkata', 'Mumbai', '2000', 'PAY789', 'CONFIRMED'),
(4, 'Alice Brown', 'alicebrown@example.com', '321 Maple St, Anytown', 'Chennai Express', '45678', 'Chennai', 'Delhi', '2000', 'PAY456', 'CONFIRMED'),
(5, 'Mike Davis', 'mikedavis@example.com', '654 Pine St, Anytown', 'Coromandel Express', '23456', 'Chennai', 'Howrah', '1500', 'PAY234', 'CONFIRMED'),
(6, 'Sarah Lee', 'sarahlee@example.com', '987 Cedar St, Anytown', 'Grand Trunk Express', '87654', 'Chennai', 'New Delhi', '2500', 'PAY876', 'CONFIRMED'),
(7, 'David Wilson', 'davidwilson@example.com', '246 Birch St, Anytown', 'Gatimaan Express', '56789', 'Delhi', 'Agra', '1000', 'PAY567', 'CONFIRMED'),
(8, 'Karen Taylor', 'karentaylor@example.com', '135 Oak St, Anytown', 'Deccan Queen Express', '87654', 'Mumbai', 'Pune', '800', 'PAY876', 'CONFIRMED'),
(9, 'Tom Brown', 'tombrown@example.com', '864 Elm St, Anytown', 'Konkan Kanya Express', '34567', 'Mumbai', 'Madgaon', '1200', 'PAY345', 'CONFIRMED'),
(10, 'Emily Davis', 'emilydavis@example.com', '753 Pine St, Anytown', 'Jammu Tawi Express', '78901', 'Jammu Tawi', 'New Delhi', '1800', 'PAY789', 'CONFIRMED');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  ADD PRIMARY KEY (`pass_id`);

--
-- Indexes for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  ADD PRIMARY KEY (`pwd_id`);

--
-- Indexes for table `orrs_train`
--
ALTER TABLE `orrs_train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  MODIFY `pass_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  MODIFY `pwd_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orrs_train`
--
ALTER TABLE `orrs_train`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  MODIFY `ticket_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
