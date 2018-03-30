/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.37-community-nt : Database - vendor
*********************************************************************
Server version : 5.0.37-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `vendor`;

USE `vendor`;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `category` */

CREATE TABLE `category` (
  `C_name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`C_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`C_name`) values ('CDs');
insert  into `category`(`C_name`) values ('Comp');
insert  into `category`(`C_name`) values ('Furniture');
insert  into `category`(`C_name`) values ('Laptop');
insert  into `category`(`C_name`) values ('LCD');
insert  into `category`(`C_name`) values ('Mobile Phones');

/*Table structure for table `ipbehaviour` */

CREATE TABLE `ipbehaviour` (
  `AccountNo` varchar(20) default NULL,
  `IpBehave` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ipbehaviour` */

insert  into `ipbehaviour`(`AccountNo`,`IpBehave`) values ('91002','1');

/*Table structure for table `ipcheck` */

CREATE TABLE `ipcheck` (
  `AccountNo` varchar(20) default NULL,
  `IpAd` varchar(20) default NULL,
  `Ipcounter` varchar(20) default NULL,
  `Tdates` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ipcheck` */

insert  into `ipcheck`(`AccountNo`,`IpAd`,`Ipcounter`,`Tdates`) values ('91002','192.168.1.73','11','03/21/2011');
insert  into `ipcheck`(`AccountNo`,`IpAd`,`Ipcounter`,`Tdates`) values ('null','192.168.1.73','1','03/21/2011');

/*Table structure for table `m_login` */

CREATE TABLE `m_login` (
  `uid` varchar(10) default NULL,
  `pwd` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_login` */

insert  into `m_login`(`uid`,`pwd`) values ('vender','vender');

/*Table structure for table `product` */

CREATE TABLE `product` (
  `category` varchar(10) default NULL,
  `pro_id` varchar(6) default NULL,
  `pro_name` varchar(15) default NULL,
  `detail` varchar(50) default NULL,
  `price` varchar(10) default NULL,
  `image` varchar(60) default NULL,
  `Vender` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('mobile pho','0102','M phone','2 gb (GPRS)','15000','animated-phone.gif','sony');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('mobile pho','0103','Nokia 2365','Fm GPRS','5300','images.jpg','LG');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Comp','0104','HP PC  set','120GB HDD  512 RAM Intel core to......','21000','Comp1.jpg','LG');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Comp','0105','LG PC Set','160Gb HDD 1GB RAM Intel Pro....','26000','comp2.jpg','Compaq');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Furniture','0106','LCD TV Stand','150X170 Get Discount 25%','23000','fur1.jpg','sony');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Furniture','0107','Tbale set','All Set','25000','fur2.jpg','LG');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Furniture','0108','Furnitures ','All Furnitures For your House','50000','fur3.jpg','Compaq');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Laptop','0109','LG 2453fd','160Gb HDD 1GB RAM Intel Pro....','32000','lap1.jpg','sony');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Laptop','0110','HP C5434','160Gb HDD 1GB RAM  Intel Pro....','53000','lap3.jpg','LG');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('MyCategory','0111','Computer','500 Gb HDD','20000','icon.jpg','sony');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('MyCategory','0112','Computer','500 GB HDD','15000','Winter.jpg','Compaq');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Comp','0113','Server','Server','55000','Athlon.jpg','LG');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Comp','0114','new pc','Details','5000','Winter.jpg','LG');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('car','0115','Feigo','white color foird figo','350000','comp2.jpg','ford');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Furniture','0116','sofa set','hsajkhsa','100000','sofaset.jpeg','durian');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('CDs','0118','Music CD','This is collection of 200 kannada songs','50','cd.png','T-Series');
insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('Furniture','0119','Chair','This Chair is good for people with back pain','5000','chair.jpg','Samsolite');

/*Table structure for table `transactiondetails` */

CREATE TABLE `transactiondetails` (
  `AccountNo` varchar(20) default NULL,
  `OrderNo` varchar(20) default NULL,
  `YourVender` varchar(20) default NULL,
  `YourDate` varchar(50) default NULL,
  `YourTime` varchar(20) default NULL,
  `YourIpAddress` varchar(20) default NULL,
  `Totalprice` varchar(20) default NULL,
  `class_in` varchar(20) default NULL,
  `T_hour` varchar(20) default NULL,
  `Ipoint_time` varchar(20) default NULL,
  `Ipoint_amount` varchar(20) default NULL,
  `Ipoint_ip` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transactiondetails` */

insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','63656','sony','03/21/2011','4:34PM','192.168.1.73','23000','Normal','16','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','759167','LG','03/21/2011','5:02PM','192.168.1.73','21000','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','538348','Samsolite','03/21/2011','5:04PM','192.168.1.73','5000','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','815903','T-Series','03/21/2011','5:06PM','192.168.1.73','50','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','920416','sony','03/21/2011','5:07PM','192.168.1.73','32000','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','868985','LG','03/21/2011','5:08PM','192.168.1.73','25000','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','867613','LG','03/21/2011','5:09PM','192.168.1.73','5000','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','580752','LG','03/21/2011','5:10PM','192.168.1.73','21000','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','686866','LG','03/21/2011','5:11PM','192.168.1.73','53000','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','395289','LG','03/21/2011','5:12PM','192.168.1.73','5300','Normal','17','Normal','Normal','Normal');
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','606807','LG','2011/03/21','18:38PM','Mobile','5000','class-I','18','0.58','Normal',NULL);
insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91002','758870','LG','2011/03/21','18:38PM','Mobile','5000','class-I','18','Normal','Normal',NULL);

/*Table structure for table `users` */

CREATE TABLE `users` (
  `password` varchar(50) default NULL,
  `user` varchar(50) NOT NULL,
  `Pname` varchar(60) character set latin1 collate latin1_danish_ci default NULL,
  `mobile` varchar(25) character set latin1 collate latin1_danish_ci default NULL,
  `Email` varchar(60) character set latin1 collate latin1_danish_ci default NULL,
  `Add` varchar(120) character set latin1 collate latin1_danish_ci default NULL,
  `Quetion` varchar(80) character set latin1 collate latin1_danish_ci default NULL,
  `Ans` varchar(50) character set latin1 collate latin1_danish_ci default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`password`,`user`,`Pname`,`mobile`,`Email`,`Add`,`Quetion`,`Ans`) values ('nishant','nishant','nishant','7259962510','nishant.mca2010@gmail.com','bangalore','How r u?','fine');
insert  into `users`(`password`,`user`,`Pname`,`mobile`,`Email`,`Add`,`Quetion`,`Ans`) values ('user','user','Ashwini','9916620608','ashpr_24@rocketmail.com','Bangalore','How r u?','fine');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;