-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema purchases1
--

CREATE DATABASE IF NOT EXISTS purchases1;
USE purchases1;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(225) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`name`,`password`,`role`) VALUES 
 ('admin','admin','admin'),
 ('admin1','admin1','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `apply`
--

DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `cid` varchar(50) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `caste` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `religion` varchar(45) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `ssboard` varchar(255) NOT NULL,
  `ssubject` varchar(255) NOT NULL,
  `ssname` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `scyear` varchar(255) NOT NULL,
  `hsboard` varchar(255) NOT NULL,
  `hsubject` varchar(255) NOT NULL,
  `hsname` varchar(255) NOT NULL,
  `hgrade` varchar(255) NOT NULL,
  `hcyear` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `apply`
--

/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` (`cid`,`cname`,`name`,`category`,`caste`,`dob`,`address`,`status`,`gender`,`religion`,`nationality`,`phone`,`ssboard`,`ssubject`,`ssname`,`grade`,`scyear`,`hsboard`,`hsubject`,`hsname`,`hgrade`,`hcyear`) VALUES 
 ('CID1001','PSG COLLEGE OF TECHNOLOGY ','sathish','Automobile Engineering','BC','12/06/1986','udumalpet','Single','Male','hindu','indian','CID1000','sdsdsd','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd'),
 ('CID1002','PSG COLLEGE OF TECHNOLOGY ','manish','Automobile Engineering','BC','16/05/1986','udumalpet','Single','Male','hindu','indian','CID1001','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd','sdsd');
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;


--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `cname` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`cid`,`cname`) VALUES 
 ('CID1001','TECHNICAL'),
 ('CID1002','NON-TECHNICAL'),
 ('CID1003','PROFESSIONAL');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `college`
--

DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `id` int(11) DEFAULT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `cname` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `colname` longtext DEFAULT NULL,
  `location` varchar(2550) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `aboutus` longtext DEFAULT NULL,
  `history` longtext DEFAULT NULL,
  `department` longtext DEFAULT NULL,
  `noseat` int(11) DEFAULT NULL,
  `caste` longtext DEFAULT NULL,
  `ranks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `college`
--

/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` (`id`,`cid`,`cname`,`type`,`colname`,`location`,`address`,`aboutus`,`history`,`department`,`noseat`,`caste`,`ranks`) VALUES 
 (1010,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Automobile Engineering',37,'BC',3),
 (1011,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Biomedical Engineering',40,'BC',1),
 (1012,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer Applications',40,'BC',1),
 (1013,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer Science and Engineering',40,'BC',5),
 (1014,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer and Information Sciences',40,'BC',1),
 (1015,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Automobile Engineering',40,'SC',0),
 (1016,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Automobile Engineering',40,'OC',0),
 (1017,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Automobile Engineering',40,'MBC',0),
 (1018,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Biomedical Engineering',40,'SC',0),
 (1019,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Biomedical Engineering',40,'OC',0),
 (1020,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Biomedical Engineering',40,'MBC',0),
 (1021,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer Applications',40,'SC',0),
 (1022,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer Applications',40,'0C',0),
 (1023,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer Applications',40,'MBC',0),
 (1024,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer Science and Engineering',40,'SC',0),
 (1025,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer Science and Engineering',40,'OC',0),
 (1026,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer Science and Engineering',40,'OBC',0),
 (1027,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer and Information Sciences',40,'0C',0),
 (1028,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer and Information Sciences',40,'MBC',0),
 (1029,'CID1000','TECHNICAL','ENGINEERING','PSG COLLEGE OF TECHNOLOGY','COIMBATORE','PSG & SONS CHARITIES\r\nPost Box No.1609,\r\nAvinashi Road,\r\nCoimbatore 641004\r\nTamilnadu, India. \r\nPhone: 91 422 2572265\r\nFax : 91 422 2573833\r\nE-mail: charity@psgtech.edu ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Message from the Managing Trustee\r\n\r\nEver since the wheel was invented, man has undergone phenomenal changes. His mobility has been vibrant. Along the path, his constant urge for making himself comfortable was realized with every new invention. It has now reached a stage where he could become a misfit without Technology. Falling a prey to technology is not contended as long as it is used for the betterment of the society. \r\n\r\nBeing bestowed with the monumental responsibility of leading the rich heritage of the PSG & Sons Charities Trust is a challenge by itself. I am proud that the rise to fame engendered not from its high rise concrete structures or from its technological knowhow, but from its intricately intertwined human resource, which has been through the thick and thin of its 80 years of existence.\r\n\r\nPSG College of Technology,during its 60 years of existence, has made deep forays into the advancing world. It has helped to successfully shape the minds of our future people with elan. Similarly, it is noteworthy that every institution sheltered under the PSG & Sons Charities umbrella has become one with the world community for the human values it inculcates in its people ','Computer and Information Sciences',40,'SC',0),
 (1000,'CID1002','TECHNICAL','DIPLOMA','RVS POLYTECHNIC','COIMBATORE','UDUMALPET','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Department of Automobile Engg ',20,'BC',0),
 (1001,'CID1002','TECHNICAL','DIPLOMA','RVS POLYTECHNIC','COIMBATORE','UDUMALPET','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Department of Information Technology ',20,'BC',0),
 (1002,'CID1002','TECHNICAL','DIPLOMA','RVS POLYTECHNIC','COIMBATORE','UDUMALPET','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Department of Mechanical Engg ',20,'BC',0),
 (1003,'CID1002','TECHNICAL','DIPLOMA','RVS POLYTECHNIC','COIMBATORE','UDUMALPET','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Diploma in Mechanical Engineering ',20,'BC',1),
 (1004,'CID1002','TECHNICAL','DIPLOMA','RVS POLYTECHNIC','COIMBATORE','UDUMALPET','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Rathinavel Subramaniam Educational Trust was named in loving memory of the brilliant elder son of Lion Vijayashri Dr.K.V.Kupusamy and Smt.K.Padmavathy. It was unfortunate that God called him back 15th January 1972 when he met with an accident at the age of four. The impact of the great loss of their dear son in the minds of the loving parents was so immense that they decided to do some solid service to the deprived rural folk around Sulur. With this noble cause in mind and heart and through dedication Mrs. and Mr. Kupusamy started establishing educational institutions all over Tamilnadu of special and technical education under RVS Educational Trust to fulfill the educational needs of the youth of the country.','Diploma in Electrical and Electronic Engineering ',20,'BC',1),
 (1005,'CID1001','TECHNICAL','ENGINEERING','Mahendra College of Engineering ','Salem','Mahendra College of Engineering\r\n\r\nChennai main road, Minnampalli\r\nSalem, Tamilnadu\r\n\r\nIndia, Pin :636 106.\r\n\r\nPh: + 91 427 2482884, 6542333\r\nFax: + 91 427 2482886','ABOUT MAHENDRA\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu.\r\n\r\nMahendra College of Engineering is an unit of Mahendra Educational Trust established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway, the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna university. ','\r\nÃƒÂ¢??It is our endeavour to bring to this institution, the best in technology and infrastructure, as we progress towards accomplishing our vision of being a centre of technical excellenceÃƒÂ¢??\r\nThiru. M. G. Bharath Kumar\r\nChairman ÃƒÂ¢?? Mahendra Educational Trust\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu. The service-based trust was established by educationalist Thiru. M. G. Bharath Kumar, who founded schools and colleges in various disciplines.\r\nAn unit of Mahendra Educational Trust on imparting quality education to the urban, semi-urban and rural mass, by taking conscious efforts with an intention of making even an ordinary citizen employed in MNCs, reputed companies and government industries, Mahendra College of Engineering was established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway; the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna Varsity. Mahendra offers six Undergraduate and three Post Graduate programmes in the fertile land of Engineering and Technology.\r\nThe institution has sophisticated atmosphere conducive to learning. The student/faculty interaction thatÃƒÂ¢??s such a vital part of Mahendra brings up the quality of education. The well-educated and dedicated staff team is always looking to fulfill the goals of the students. ','Electronics and Communication Engineering',30,'BC',0),
 (1006,'CID1001','TECHNICAL','ENGINEERING','Mahendra College of Engineering ','Salem','Mahendra College of Engineering\r\n\r\nChennai main road, Minnampalli\r\nSalem, Tamilnadu\r\n\r\nIndia, Pin :636 106.\r\n\r\nPh: + 91 427 2482884, 6542333\r\nFax: + 91 427 2482886','ABOUT MAHENDRA\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu.\r\n\r\nMahendra College of Engineering is an unit of Mahendra Educational Trust established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway, the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna university. ','\r\nÃƒÂ¢??It is our endeavour to bring to this institution, the best in technology and infrastructure, as we progress towards accomplishing our vision of being a centre of technical excellenceÃƒÂ¢??\r\nThiru. M. G. Bharath Kumar\r\nChairman ÃƒÂ¢?? Mahendra Educational Trust\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu. The service-based trust was established by educationalist Thiru. M. G. Bharath Kumar, who founded schools and colleges in various disciplines.\r\nAn unit of Mahendra Educational Trust on imparting quality education to the urban, semi-urban and rural mass, by taking conscious efforts with an intention of making even an ordinary citizen employed in MNCs, reputed companies and government industries, Mahendra College of Engineering was established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway; the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna Varsity. Mahendra offers six Undergraduate and three Post Graduate programmes in the fertile land of Engineering and Technology.\r\nThe institution has sophisticated atmosphere conducive to learning. The student/faculty interaction thatÃƒÂ¢??s such a vital part of Mahendra brings up the quality of education. The well-educated and dedicated staff team is always looking to fulfill the goals of the students. ','Electrical and Electronics Engineering',30,'BC',0);
INSERT INTO `college` (`id`,`cid`,`cname`,`type`,`colname`,`location`,`address`,`aboutus`,`history`,`department`,`noseat`,`caste`,`ranks`) VALUES 
 (1007,'CID1001','TECHNICAL','ENGINEERING','Mahendra College of Engineering ','Salem','Mahendra College of Engineering\r\n\r\nChennai main road, Minnampalli\r\nSalem, Tamilnadu\r\n\r\nIndia, Pin :636 106.\r\n\r\nPh: + 91 427 2482884, 6542333\r\nFax: + 91 427 2482886','ABOUT MAHENDRA\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu.\r\n\r\nMahendra College of Engineering is an unit of Mahendra Educational Trust established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway, the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna university. ','\r\nÃƒÂ¢??It is our endeavour to bring to this institution, the best in technology and infrastructure, as we progress towards accomplishing our vision of being a centre of technical excellenceÃƒÂ¢??\r\nThiru. M. G. Bharath Kumar\r\nChairman ÃƒÂ¢?? Mahendra Educational Trust\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu. The service-based trust was established by educationalist Thiru. M. G. Bharath Kumar, who founded schools and colleges in various disciplines.\r\nAn unit of Mahendra Educational Trust on imparting quality education to the urban, semi-urban and rural mass, by taking conscious efforts with an intention of making even an ordinary citizen employed in MNCs, reputed companies and government industries, Mahendra College of Engineering was established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway; the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna Varsity. Mahendra offers six Undergraduate and three Post Graduate programmes in the fertile land of Engineering and Technology.\r\nThe institution has sophisticated atmosphere conducive to learning. The student/faculty interaction thatÃƒÂ¢??s such a vital part of Mahendra brings up the quality of education. The well-educated and dedicated staff team is always looking to fulfill the goals of the students. ','Computer Science and Engineering',30,'BC',0),
 (1008,'CID1001','TECHNICAL','ENGINEERING','Mahendra College of Engineering ','Salem','Mahendra College of Engineering\r\n\r\nChennai main road, Minnampalli\r\nSalem, Tamilnadu\r\n\r\nIndia, Pin :636 106.\r\n\r\nPh: + 91 427 2482884, 6542333\r\nFax: + 91 427 2482886','ABOUT MAHENDRA\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu.\r\n\r\nMahendra College of Engineering is an unit of Mahendra Educational Trust established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway, the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna university. ','\r\nÃƒÂ¢??It is our endeavour to bring to this institution, the best in technology and infrastructure, as we progress towards accomplishing our vision of being a centre of technical excellenceÃƒÂ¢??\r\nThiru. M. G. Bharath Kumar\r\nChairman ÃƒÂ¢?? Mahendra Educational Trust\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu. The service-based trust was established by educationalist Thiru. M. G. Bharath Kumar, who founded schools and colleges in various disciplines.\r\nAn unit of Mahendra Educational Trust on imparting quality education to the urban, semi-urban and rural mass, by taking conscious efforts with an intention of making even an ordinary citizen employed in MNCs, reputed companies and government industries, Mahendra College of Engineering was established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway; the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna Varsity. Mahendra offers six Undergraduate and three Post Graduate programmes in the fertile land of Engineering and Technology.\r\nThe institution has sophisticated atmosphere conducive to learning. The student/faculty interaction thatÃƒÂ¢??s such a vital part of Mahendra brings up the quality of education. The well-educated and dedicated staff team is always looking to fulfill the goals of the students. ','Mechanical Engineering',30,'BC',0),
 (1009,'CID1001','TECHNICAL','ENGINEERING','Mahendra College of Engineering ','Salem','Mahendra College of Engineering\r\n\r\nChennai main road, Minnampalli\r\nSalem, Tamilnadu\r\n\r\nIndia, Pin :636 106.\r\n\r\nPh: + 91 427 2482884, 6542333\r\nFax: + 91 427 2482886','ABOUT MAHENDRA\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu.\r\n\r\nMahendra College of Engineering is an unit of Mahendra Educational Trust established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway, the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna university. ','\r\nÃƒÂ¢??It is our endeavour to bring to this institution, the best in technology and infrastructure, as we progress towards accomplishing our vision of being a centre of technical excellenceÃƒÂ¢??\r\nThiru. M. G. Bharath Kumar\r\nChairman ÃƒÂ¢?? Mahendra Educational Trust\r\n\r\nSince 1978, the Mahendra Educational Trust has grown in size, number and accomplishments and is imparting quality education at primary to higher level in Tamilnadu. The service-based trust was established by educationalist Thiru. M. G. Bharath Kumar, who founded schools and colleges in various disciplines.\r\nAn unit of Mahendra Educational Trust on imparting quality education to the urban, semi-urban and rural mass, by taking conscious efforts with an intention of making even an ordinary citizen employed in MNCs, reputed companies and government industries, Mahendra College of Engineering was established in 2005 to meet the higher education needs of the students who seek to stand as engineers and scientists. It is located in Minnampalli, on the Salem-Chennai highway; the campus is bounded on the east by Attur, on the west by Salem, on the south by Namakkal and on the north by Dharmapuri. The college is recognized by AICTE and affiliated to Anna Varsity. Mahendra offers six Undergraduate and three Post Graduate programmes in the fertile land of Engineering and Technology.\r\nThe institution has sophisticated atmosphere conducive to learning. The student/faculty interaction thatÃƒÂ¢??s such a vital part of Mahendra brings up the quality of education. The well-educated and dedicated staff team is always looking to fulfill the goals of the students. ','Information Technology',30,'BC',0);
/*!40000 ALTER TABLE `college` ENABLE KEYS */;


--
-- Definition of table `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `fid` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `ddate` varchar(45) NOT NULL,
  `bname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `download`
--

/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` (`fid`,`filename`,`fname`,`ddate`,`bname`) VALUES 
 ('100','HARI_PROJECTS.doc','sathish','2012-07-12 13:14:54','sathish'),
 ('101','Deriving.docx','sathish','2012-07-12 13:15:15','sathish'),
 ('101','Deriving.docx','sathish','2012-07-19 18:28:11','sathish'),
 ('100','HARI_PROJECTS.doc','sathish','2012-07-23 11:06:25','sathish'),
 ('100','HARI_PROJECTS.doc','sathish','2012-07-26 15:12:43','sathish'),
 ('106','Deriving.docx','asa','2012-09-28 11:32:37','dinesh'),
 ('106','Deriving.docx','asa','2012-09-28 11:32:38','null'),
 ('106','Deriving.docx','asa','2012-09-28 11:32:38','null'),
 ('109','NOVEMBER.docx','mani','2012-12-04 12:24:45','mani'),
 ('109','NOVEMBER.docx','mani','2012-12-04 12:24:46','null'),
 ('109','NOVEMBER.docx','mani','2012-12-04 12:24:46','null'),
 ('102','HARI_PROJECTS.doc','sathish','2012-12-18 12:31:50','sathish');
/*!40000 ALTER TABLE `download` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `pid` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `rate` int(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `feed` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`pid`,`pname`,`rate`,`feedback`,`uname`,`gname`,`feed`) VALUES 
 ('1009','Mobile',1,'        sdsd    ','sathish','BC','Good'),
 ('1000','Heart Disease',1,'      jkjkjkjk      ','sathish','BC','Good'),
 ('1002','Scheme For Residential Education For Students in High Schools in Targeted Areas (SHRESHTA)',1,'xx      ','sathish','BC','Good');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `pro`
--

DROP TABLE IF EXISTS `pro`;
CREATE TABLE `pro` (
  `uname` varchar(255) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `count` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pro`
--

/*!40000 ALTER TABLE `pro` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(250) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `pdetail` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `cprice` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ranks` varchar(50) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`pid`,`pname`,`image`,`pdetail`,`price`,`discount`,`stock`,`type`,`uname`,`cprice`,`gender`,`age`,`status`,`ranks`) VALUES 
 (1000000,'Lady Dress','1000000.jpg','lady',560,1,'99','Dress','admin',900,'Female','10-20','Low','1'),
 (1000001,'Lady Dress','1000001.jpg','Lady',2300,1,'9','Dress','admin',3500,'Female','21-35','High','1');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `pid` int(255) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `nproduct` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `selling` int(11) NOT NULL,
  `productid` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`pid`,`uname`,`pname`,`price`,`discount`,`amount`,`nproduct`,`total`,`date`,`type`,`selling`,`productid`) VALUES 
 (999,'sathish','SONY ',7500,10,6750,5,33750,'2025-03-21','MOBILE',6000,'1001'),
 (1000,'sathish','Lady Dress',1,5,555,1,555,'2025-03-27','Dress',560,'1000000'),
 (1001,'sathish','Lady Dress',1,23,2277,1,2277,'2025-03-27','Dress',2300,'1000001');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;


--
-- Definition of table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `qid` varchar(20) NOT NULL,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question`
--

/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` (`qid`,`question`) VALUES 
 ('0','Select  the Security Question'),
 ('1','What is your Pet name?'),
 ('2','What is your first mobile name?'),
 ('3','What is your father name?'),
 ('4','What is your hobby?'),
 ('5','What is your partner name?'),
 ('6','What is your partner petname?');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;


--
-- Definition of table `randomno`
--

DROP TABLE IF EXISTS `randomno`;
CREATE TABLE `randomno` (
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `random1` varchar(45) DEFAULT NULL,
  `cal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `randomno`
--

/*!40000 ALTER TABLE `randomno` DISABLE KEYS */;
INSERT INTO `randomno` (`name`,`password`,`random1`,`cal`) VALUES 
 ('sridhar','sridhar','32961','-512506208'),
 ('sathish','sathish','65872','1177543116'),
 ('mahesh','mahesh','2286','0'),
 ('maheshs','maheshs','20673','3077864');
/*!40000 ALTER TABLE `randomno` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `userid` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `creditcard` varchar(50) NOT NULL,
  `gname` varchar(50) NOT NULL,
  `gender` varchar(23) NOT NULL,
  `age` varchar(50) NOT NULL,
  `income` varchar(50) NOT NULL,
  `cast` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`userid`,`username`,`password`,`name`,`dob`,`email`,`address`,`question`,`answer`,`mobile`,`image`,`creditcard`,`gname`,`gender`,`age`,`income`,`cast`) VALUES 
 (1000,'sathish','sathish','sathish','asvperumal@gmail.com','1986-03-13','udumalpet','What is your Pet name?','sathish','9791334452','','12121212122','','Male','10-20','Low','BC');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;


--
-- Definition of table `sdetail`
--

DROP TABLE IF EXISTS `sdetail`;
CREATE TABLE `sdetail` (
  `sid` int(11) DEFAULT NULL,
  `Sname` longtext DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `Sdescription` longtext DEFAULT NULL,
  `eligiblity` longtext DEFAULT NULL,
  `Website` longtext DEFAULT NULL,
  `Stype` longtext DEFAULT NULL,
  `Scoverage` longtext DEFAULT NULL,
  `caste` varchar(450) DEFAULT NULL,
  `ranks` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sdetail`
--

/*!40000 ALTER TABLE `sdetail` DISABLE KEYS */;
INSERT INTO `sdetail` (`sid`,`Sname`,`gender`,`Sdescription`,`eligiblity`,`Website`,`Stype`,`Scoverage`,`caste`,`ranks`) VALUES 
 (1002,'Scheme For Residential Education For Students in High Schools in Targeted Areas (SHRESHTA)','Male','The main objective behind the scheme is to involve the voluntary sector and training institutions of repute to improve educational and socioeconomic conditions of the target group i.e. Scheduled Castes with a view to upgrade skill to enable them to start income generating activities on their own or get gainfully employed in some sector or the other. The principle that good voluntary organizations should not only be assisted but also consciously built up has been guiding spirit behind the formulation of the Scheme.','Eligibility:\r\ni. Only SC students studying in the recognized schools ??? Private or\r\nGovernment or Local Body schools are eligible.\r\nii. For admission in the Class 9, the student should have passed the\r\nClass 8 in the academic year immediately preceding the year of\r\nadmission.\r\niii. For admission in the Class 11, the student should have passed the\r\nClass 10 in the academic year immediately preceding the year of\r\nadmission.\r\niv. The parental income shall not be more than Rs. 2.5 lakhs per\r\nyear.\r\nv. The Caste and Income certificates shall be uploaded prior tothe web\r\ncounselling.\r\nvi. Students applying under this Scheme should not be coveredunder\r\nPre-Matric Scholarship Scheme of the Department.','https://grants-msje.gov.in','NGOs Scheme','OTHER CONDITIONS\r\na. If an organization has already received or is expected to receive grant-in-aid\r\nfrom some other Governmental sources for the same purpose, an assessment\r\nof Central grant-in-aid will normally be made after taking into account of\r\ngrant-in-aid from other such official sources.\r\nb. No capitation or other similar fees or donation in any form shall be charged\r\nfrom any beneficiary. In case any fee is charged from the beneficiary, it must\r\nbe shown in the statement of accounts to be furnished to the\r\nMinistry/prescribed agency so that the amount so raised could be deducted\r\nfrom the admissible amount of grant-in- aid.\r\nc. Financial norms for the projects wherever not specified under the Scheme\r\nwould be decided by the Ministry on case-to-case basis.\r\nd. Financial norms for releasing the grants to the charitable companies licensed\r\nunder Section 25 of the Company???s Act 1958 under the administrative control\r\nof the Ministry would be decided on case-to- case basis.\r\n','BC','3'),
 (1003,'National Action Plan for Drug Demand Reduction','Male','The main objective behind the scheme is to involve the voluntary sector and training institutions of repute to improve educational and socioeconomic conditions of the target group i.e. Scheduled Castes with a view to upgrade skill to enable them to start income generating activities on their own or get gainfully employed in some sector or the other. The principle that good voluntary organizations should not only be assisted but also consciously built up has been guiding spirit behind the formulation of the Scheme.','The main objective behind the scheme is to involve the voluntary sector and training institutions of repute to improve educational and socioeconomic conditions of the target group i.e. Scheduled Castes with a view to upgrade skill to enable them to start income generating activities on their own or get gainfully employed in some sector or the other. The principle that good voluntary organizations should not only be assisted but also consciously built up has been guiding spirit behind the formulation of the Scheme.','https://grants-msje.gov.in','NGOs Scheme','OTHER CONDITIONS\r\na. If an organization has already received or is expected to receive grant-in-aid\r\nfrom some other Governmental sources for the same purpose, an assessment\r\nof Central grant-in-aid will normally be made after taking into account of\r\ngrant-in-aid from other such official sources.\r\nb. No capitation or other similar fees or donation in any form shall be charged\r\nfrom any beneficiary. In case any fee is charged from the beneficiary, it must\r\nbe shown in the statement of accounts to be furnished to the\r\nMinistry/prescribed agency so that the amount so raised could be deducted\r\nfrom the admissible amount of grant-in- aid.\r\nc. Financial norms for the projects wherever not specified under the Scheme\r\nwould be decided by the Ministry on case-to-case basis.\r\nd. Financial norms for releasing the grants to the charitable companies licensed\r\nunder Section 25 of the Company???s Act 1958 under the administrative control\r\nof the Ministry would be decided on case-to- case basis.\r\n','BC','0');
/*!40000 ALTER TABLE `sdetail` ENABLE KEYS */;


--
-- Definition of table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` varchar(255) NOT NULL DEFAULT '',
  `cname` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `type`
--

/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`tid`,`cname`,`type`) VALUES 
 ('TID1001','TECHNICAL','ENGINEERING'),
 ('TID1002','TECHNICAL','INDUSTRIAL TRAINING INSTITUTE'),
 ('TID1003','TECHNICAL','DIPLOMA'),
 ('TID1004','NON-TECHNICAL','ART & SCIENCE'),
 ('TID1005','PROFESSIONAL','MEDICAL'),
 ('TID1006','PROFESSIONAL','LAW ');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `name` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `city` varchar(200) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
information_schemauserusertestusers