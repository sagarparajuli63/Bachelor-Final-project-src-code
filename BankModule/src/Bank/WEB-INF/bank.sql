/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.37-community-nt : Database - bank
*********************************************************************
Server version : 5.0.37-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `bank`;

USE `bank`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `bankemp` */

DROP TABLE IF EXISTS `bankemp`;

CREATE TABLE `bankemp` (
  `Ename` varchar(10) default NULL,
  `eid` varchar(10) default NULL,
  `passkey` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bankemp` */

insert  into `bankemp`(`Ename`,`eid`,`passkey`) values ('sachin','sachin','sachin');

/*Table structure for table `bata` */

DROP TABLE IF EXISTS `bata`;

CREATE TABLE `bata` (
  `acno` varchar(10) default NULL,
  `c_date` varchar(10) default NULL,
  `c_time` varchar(10) default NULL,
  `c_rs` varchar(10) default NULL,
  `total` varchar(20) default NULL,
  `ExpiryMonth` varchar(40) default NULL,
  `ExpiryYear` varchar(40) default NULL,
  `APN` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bata` */

insert  into `bata`(`acno`,`c_date`,`c_time`,`c_rs`,`total`,`ExpiryMonth`,`ExpiryYear`,`APN`) values ('91001','06/25/2009','6:45PM','50000','50000',NULL,NULL,NULL),('991002','06/29/2009','3:17PM','1000','46700','07','2011','4699100211705');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cname` varchar(10) default NULL,
  `acno` varchar(10) NOT NULL,
  `cardno` varchar(20) default NULL,
  `mobile` varchar(15) default NULL,
  `mail` varchar(25) default NULL,
  `addre` varchar(30) default NULL,
  `rs` varchar(40) default NULL,
  `ExpiryMonth` varchar(40) default NULL,
  `ExpiryYear` varchar(40) default NULL,
  `AcPanelNo` varchar(40) default NULL,
  PRIMARY KEY  (`acno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`cname`,`acno`,`cardno`,`mobile`,`mail`,`addre`,`rs`,`ExpiryMonth`,`ExpiryYear`,`AcPanelNo`) values ('sachin','91001','35181643291001','9739156501','sachin@cbkinfotech.com','mathikere','50100',NULL,NULL,NULL),('saurabh','991002','356134037991002','958465854','sau@gmail.com','bangalore','100000','07','2011','4699100211705');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
