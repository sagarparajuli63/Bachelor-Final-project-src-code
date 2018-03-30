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

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `C_name` varchar(10) NOT NULL,
  PRIMARY KEY  (`C_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`C_name`) values ('Computer'),('Furniture'),('Laptop'),('mobile pho'),('MyCategory');

/*Table structure for table `ipbehaviour` */

DROP TABLE IF EXISTS `ipbehaviour`;

CREATE TABLE `ipbehaviour` (
  `AccountNo` varchar(20) default NULL,
  `IpBehave` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ipbehaviour` */

insert  into `ipbehaviour`(`AccountNo`,`IpBehave`) values ('91004','1'),('91005','1'),('91005','1'),('91005','1');

/*Table structure for table `ipcheck` */

DROP TABLE IF EXISTS `ipcheck`;

CREATE TABLE `ipcheck` (
  `AccountNo` varchar(20) default NULL,
  `IpAd` varchar(20) default NULL,
  `Ipcounter` varchar(20) default NULL,
  `Tdates` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ipcheck` */

insert  into `ipcheck`(`AccountNo`,`IpAd`,`Ipcounter`,`Tdates`) values ('91001','192.168.1.3','4','07/18/2009'),('91001','127.0.0.1','2','07/18/2009'),('91001','192.168.1.103','4','07/18/2009'),('91001','192.168.1.104','1','07/18/2009'),('91001','192.168.1.104','2','07/31/2009'),('91004','127.0.0.1','15','08/04/2009'),('91005','127.0.0.1','17','08/04/2009');

/*Table structure for table `m_login` */

DROP TABLE IF EXISTS `m_login`;

CREATE TABLE `m_login` (
  `uid` varchar(10) default NULL,
  `pwd` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_login` */

insert  into `m_login`(`uid`,`pwd`) values ('vender','vender');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

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

insert  into `product`(`category`,`pro_id`,`pro_name`,`detail`,`price`,`image`,`Vender`) values ('mobile pho','0102','M phone','2 gb (GPRS)','15000','animated-phone.gif','sony'),('mobile pho','0103','Nokia 2365','Fm GPRS','5300','images.jpg','LG'),('Computer','0104','HP PC  set','120GB HDD  512 RAM Intel core to......','21000','Comp1.jpg','LG'),('Computer','0105','LG PC Set','160Gb HDD 1GB RAM Intel Pro....','26000','comp2.jpg','Compaq'),('Furniture','0106','LCD TV Stand','150X170 Get Discount 25%','23000','fur1.jpg','sony'),('Furniture','0107','Tbale set','All Set','25000','fur2.jpg','LG'),('Furniture','0108','Furnitures ','All Furnitures For your House','50000','fur3.jpg','Compaq'),('Laptop','0109','LG 2453fd','160Gb HDD 1GB RAM Intel Pro....','32000','lap1.jpg','sony'),('Laptop','0110','HP C5434','160Gb HDD 1GB RAM  Intel Pro....','53000','lap3.jpg','LG'),('MyCategory','0111','Computer','500 Gb HDD','20000','icon.jpg','sony'),('MyCategory','0112','Computer','500 GB HDD','15000','Winter.jpg','Compaq'),('Computer','0113','Server','Server','55000','Athlon.jpg','LG'),('Computer','0114','new pc','Details','5000','Winter.jpg','LG');

/*Table structure for table `transactiondetails` */

DROP TABLE IF EXISTS `transactiondetails`;

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

insert  into `transactiondetails`(`AccountNo`,`OrderNo`,`YourVender`,`YourDate`,`YourTime`,`YourIpAddress`,`Totalprice`,`class_in`,`T_hour`,`Ipoint_time`,`Ipoint_amount`,`Ipoint_ip`) values ('91004','764987','LG','08/04/2009','11:58AM','127.0.0.2','5300','Normal','11','Normal','Normal','Normal'),('91004','904138','LG','08/04/2009','11:59AM','127.0.0.2','5300','Normal','11','Normal','Normal','Normal'),('91004','824936','LG','08/04/2009','12:00PM','127.0.0.2','5300','Normal','12','Normal','Normal','Normal'),('91004','739598','LG','08/04/2009','12:01PM','127.0.0.2','5300','Normal','12','Normal','Normal','Normal'),('91004','748998','LG','08/04/2009','12:02PM','127.0.0.2','5300','Normal','12','Normal','Normal','Normal'),('91004','979551','LG','08/04/2009','12:02PM','127.0.0.2','5300','Normal','12','Normal','Normal','Normal'),('91004','143546','LG','08/04/2009','12:03PM','127.0.0.2','5300','Normal','12','Normal','Normal','Normal'),('91004','728678','LG','08/04/2009','12:04PM','127.0.0.2','5300','Normal','12','Normal','Normal','Normal'),('91004','995','Compaq','08/04/2009','12:14PM','127.0.0.2','1000','Normal','12','Normal','Normal','Normal'),('91004','303701','sony','08/04/2009','12:15PM','127.0.0.2','1000','Normal','12','Normal','Normal','Normal'),('91004','347570','Compaq','08/04/2009','12:17PM','127.0.0.2','1000','Normal','12','Normal','Normal','Normal'),('91004','957739','LG','08/04/2009','12:30PM','127.0.0.2','5000','class-I','12','Normal','Normal','Normal'),('91005','100','LG','08/04/2009','1:00PM','127.0.0.2','5300','Normal','6','Normal','Normal','Normal'),('91005','200','LG','08/04/2009','1:01PM','127.0.0.2','5300','Normal','4','Normal','Normal','Normal'),('91005','300','LG','08/04/2009','1:02PM','127.0.0.2','5300','Normal','3','Normal','Normal','Normal'),('91005','400','LG','08/04/2009','1:02PM','127.0.0.2','5300','Normal','3','Normal','Normal','Normal'),('91005','500','LG','08/04/2009','1:03PM','127.0.0.2','5300','Normal','4','Normal','Normal','Normal'),('91005','600','LG','08/04/2009','1:04PM','127.0.0.2','5300','Normal','4','Normal','Normal','Normal'),('91005','700','LG','08/04/2009','1:04PM','127.0.0.2','5300','Normal','4','Normal','Normal','Normal'),('91005','200','LG','08/04/2009','1:39PM','127.0.0.2','5300','Normal','3','Normal','Normal','Normal'),('91005','100','LG','08/04/2009','1:46PM','127.0.0.1','5300','Normal','3','Normal','Normal','Normal'),('91001','350520','LG','2009/09/19','10:23AM','Mobile','21000','class-II','10','Normal','Normal',NULL),('91001','698322','LG','2009/09/19','10:26AM','Mobile','21000','class-II','10','Normal','Normal',NULL),('91001','38626','sony','2009/09/19','10:26AM','Mobile','23000','class-III','10','Normal','Normal',NULL),('91005','50','sony','2009/09/19','11:45AM','Mobile','23000','Normal','11','Normal','Normal',NULL),('91005','722664','sony','2009/09/19','11:49AM','Mobile','23000','Normal','11','Normal','Normal',NULL),('91005','559558','sony','2009/09/19','11:49AM','Mobile','23000','class-I','11','0.833','0.592',NULL),('91005','655108','sony','2009/09/19','12:01PM','Mobile','23000','class-I','12','0.1000','0.492',NULL),('91005','722425','sony','2009/09/19','12:37PM','Mobile','23000','class-I','12','0.1000','0.392',NULL),('91005','2657','sony','2009/09/19','12:43PM','Mobile','23000','class-I','12','0.1000','0.292',NULL),('91005','375131','sony','2009/09/19','12:52PM','Mobile','23000','class-II','12','0.1000','Normal',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

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

insert  into `users`(`password`,`user`,`Pname`,`mobile`,`Email`,`Add`,`Quetion`,`Ans`) values ('123','123','sridhar','9242789014','j2ee.sridhar@gmail.com','bangalore','question','answer'),('mohan','mohan','mohan','9797979797','mon@gmail.com','bangalore','mohan','mohan'),('123','mon','mohan','9854652452','mon@gmail.com','ranchi','wt r u doing?','sl'),('234','pushpa','pushpa','9898989898','pu@gmail.com','sadana','sadf','sdf'),('123','rahul','rahul','9886097381','ra@gmail.com','bang','fghfh','fhgfhg'),('kumar','ram','ram','9885645525','ram@gmail.com','bang','how r u??','fine'),('rprp','rprp','roopa','34563456','rprp@gmail.com','fdghghdghdgh','sdf','df'),('sachin','sachin','sachin','9739156501','sachin@cbkinfotech.com','mathikere','what is company name?','cbk'),('kumar','saurabh','saurabh','9885465245','sau@gmail.com','bang','how r u??','fine');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
