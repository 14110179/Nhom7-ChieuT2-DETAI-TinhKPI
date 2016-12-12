
CREATE DATABASE csdlwebkpi;
USE csdlwebkpi;


--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `roleid` int(11) NOT NULL,
  `rolename` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Giảng Viên'),(2,'Hiệu Trưởng'),(3,'Trưởng Khoa'),(4,'Trưởng Bộ Môn'),(5,'Phòng TCCB'),(6,'Admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` char(20) NOT NULL,
  `pass` char(20) DEFAULT NULL,
  `khoa` varchar(1000) DEFAULT NULL,
  `hoten` varchar(1000) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` bit(1) DEFAULT NULL,
  `noisinh` varchar(1000) DEFAULT NULL,
  `dantoc` varchar(500) DEFAULT NULL,
  `socmnd` char(20) DEFAULT NULL,
  `tongiao` varchar(100) DEFAULT NULL,
  `diachi` varchar(5000) DEFAULT NULL,
  `sdt` char(15) DEFAULT NULL,
  `email` char(200) DEFAULT NULL,
  `ghichu` varchar(5000) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `roleid` (`roleid`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','123456','','Nguyễn Văn F','1996-10-20','','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',6),('GV001','123456','Công Nghệ Thông Tin','Nguyễn Văn A','1996-10-20','','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',1),('GV002','123456','','Nguyễn Văn B','1996-10-20','','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',2),('GV005','123456','','Nguyễn Văn E','1996-10-20','\0','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',5),('GV008','123456','Cơ Khí Chế Tạo Máy','Nguyễn Văn B','1996-10-20','','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',1),('truongbomon1','123456','Công Nghệ Thông Tin','Nguyễn Văn D','1996-10-20','\0','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',4),('truongbomon2','123456','Cơ Khí Chế Tạo Máy','Nguyễn Văn D','1996-10-20','\0','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',4),('truongkhoa1','123456','Công Nghệ Thông Tin','Nguyễn Văn C','1996-10-20','\0','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',3),('truongkhoa2','123456','Cơ Khí Chế Tạo Máy','Nguyễn Văn C','1996-10-20','\0','Biên Hòa','Kinh','286512324','Không','Số 1 Võ Văn Ngân','09099090090','','Không có ghi chú',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



CREATE TABLE `bieumau` (
  `mabieumau` char(100) NOT NULL,
  `tenbieumau` varchar(5000) DEFAULT NULL,
  `namhoc` char(50) DEFAULT NULL,
  `nguoitao` char(20) DEFAULT NULL,
  PRIMARY KEY (`mabieumau`),
  KEY `nguoitao` (`nguoitao`),
  CONSTRAINT `bieumau_ibfk_1` FOREIGN KEY (`nguoitao`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `bieumau` WRITE;
/*!40000 ALTER TABLE `bieumau` DISABLE KEYS */;
INSERT INTO `bieumau` VALUES ('BM2016-2017','BM2016-2017','2016-2017','admin');
/*!40000 ALTER TABLE `bieumau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhomtieuchi`
--

DROP TABLE IF EXISTS `nhomtieuchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhomtieuchi` (
  `manhomtc` char(100) NOT NULL,
  `tennhomtc` varchar(5000) DEFAULT NULL,
  `mabieumau` char(100) DEFAULT NULL,
  PRIMARY KEY (`manhomtc`),
  KEY `mabieumau` (`mabieumau`),
  CONSTRAINT `nhomtieuchi_ibfk_1` FOREIGN KEY (`mabieumau`) REFERENCES `bieumau` (`mabieumau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhomtieuchi`
--

LOCK TABLES `nhomtieuchi` WRITE;
/*!40000 ALTER TABLE `nhomtieuchi` DISABLE KEYS */;
INSERT INTO `nhomtieuchi` VALUES ('BM2016-2017-1','Nhóm Tiêu Chí 1','BM2016-2017'),('BM2016-2017-2','Nhóm Tiêu Chí 2','BM2016-2017'),('BM2016-2017-3','Nhóm Tiêu Chí 3','BM2016-2017');
/*!40000 ALTER TABLE `nhomtieuchi` ENABLE KEYS */;
UNLOCK TABLES;





--
-- Table structure for table `thongbao`
--

DROP TABLE IF EXISTS `thongbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thongbao` (
  `mathongbao` char(100) NOT NULL,
  `tenthongbao` varchar(5000) DEFAULT NULL,
  `noidung` varchar(5000) DEFAULT NULL,
  `nguoigui` char(20) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `nguoinhan` char(20) DEFAULT NULL,
  `trangthai` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`mathongbao`),
  KEY `nguoigui` (`nguoigui`),
  KEY `nguoinhan` (`nguoinhan`),
  CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`nguoigui`) REFERENCES `users` (`username`),
  CONSTRAINT `thongbao_ibfk_2` FOREIGN KEY (`nguoinhan`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongbao`
--

LOCK TABLES `thongbao` WRITE;
/*!40000 ALTER TABLE `thongbao` DISABLE KEYS */;
INSERT INTO `thongbao` VALUES ('MaTB-1','Năm Mười Năm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm Mười','Năm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm MườiNăm Mười','GV002','2016-12-10 00:00:00','GV001','Đã gửi'),('MaTB-2','áddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđ','áddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđáddddddddđ','GV002','2016-12-10 00:00:00','GV001','Đã gửi');
/*!40000 ALTER TABLE `thongbao` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `tieuchi`
--

DROP TABLE IF EXISTS `tieuchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tieuchi` (
  `matieuchi` char(100) NOT NULL,
  `tentieuchi` varchar(5000) DEFAULT NULL,
  `manhomtc` char(100) DEFAULT NULL,
  `mabieumau` char(100) DEFAULT NULL,
  `diemtoida` int(11) DEFAULT NULL,
  PRIMARY KEY (`matieuchi`),
  KEY `mabieumau` (`mabieumau`),
  KEY `manhomtc` (`manhomtc`),
  CONSTRAINT `tieuchi_ibfk_1` FOREIGN KEY (`mabieumau`) REFERENCES `bieumau` (`mabieumau`),
  CONSTRAINT `tieuchi_ibfk_2` FOREIGN KEY (`manhomtc`) REFERENCES `nhomtieuchi` (`manhomtc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieuchi`
--

LOCK TABLES `tieuchi` WRITE;
/*!40000 ALTER TABLE `tieuchi` DISABLE KEYS */;
INSERT INTO `tieuchi` VALUES ('BM2016-2017-1-1','Tiêu Chí 1','BM2016-2017-1','BM2016-2017',10),('BM2016-2017-1-2','Tiêu Chí 2','BM2016-2017-1','BM2016-2017',10),('BM2016-2017-1-3','Tiêu Chí 3','BM2016-2017-1','BM2016-2017',10),('BM2016-2017-2-1','Tiêu Chí 1','BM2016-2017-2','BM2016-2017',10),('BM2016-2017-2-2','Tiêu Chí 2','BM2016-2017-2','BM2016-2017',10),('BM2016-2017-3-1','Tiêu Chí 1','BM2016-2017-3','BM2016-2017',10),('BM2016-2017-3-2','Tiêu Chí 2','BM2016-2017-3','BM2016-2017',10);
/*!40000 ALTER TABLE `tieuchi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phancongcv`
--

DROP TABLE IF EXISTS `phancongcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phancongcv` (
  `nguoiphancong` char(20) DEFAULT NULL,
  `nguoithuchien` char(20) DEFAULT NULL,
  `mabieumau` char(100) DEFAULT NULL,
  `matieuchi` char(100) DEFAULT NULL,
  `ngayhoanthanh` date DEFAULT NULL,
  `trangthai` varchar(500) DEFAULT NULL,
  `diemtudanhgia` int(11) DEFAULT NULL,
  `diemtruongkhoa` int(11) DEFAULT NULL,
  `diemtruongbomon` int(11) DEFAULT NULL,
  KEY `nguoiphancong` (`nguoiphancong`),
  KEY `nguoithuchien` (`nguoithuchien`),
  KEY `mabieumau` (`mabieumau`),
  KEY `matieuchi` (`matieuchi`),
  CONSTRAINT `phancongcv_ibfk_1` FOREIGN KEY (`nguoiphancong`) REFERENCES `users` (`username`),
  CONSTRAINT `phancongcv_ibfk_2` FOREIGN KEY (`nguoithuchien`) REFERENCES `users` (`username`),
  CONSTRAINT `phancongcv_ibfk_3` FOREIGN KEY (`mabieumau`) REFERENCES `bieumau` (`mabieumau`),
  CONSTRAINT `phancongcv_ibfk_4` FOREIGN KEY (`matieuchi`) REFERENCES `tieuchi` (`matieuchi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `thuchienbieumau`
--

DROP TABLE IF EXISTS `thuchienbieumau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thuchienbieumau` (
  `mabieumau` char(100) DEFAULT NULL,
  `nguoithuchien` char(20) DEFAULT NULL,
  `trangthai` varchar(500) DEFAULT NULL,
  `matieuchi` char(100) DEFAULT NULL,
  `manhomtieuchi` char(100) DEFAULT NULL,
  `diemtudanhgia` int(11) DEFAULT NULL,
  `diemtruongbomon` int(11) DEFAULT NULL,
  `diemtruongkhoa` int(11) DEFAULT NULL,
  `diembangiamhieu` int(11) DEFAULT NULL,
  KEY `mabieumau` (`mabieumau`),
  KEY `manhomtieuchi` (`manhomtieuchi`),
  KEY `matieuchi` (`matieuchi`),
  KEY `nguoithuchien` (`nguoithuchien`),
  CONSTRAINT `thuchienbieumau_ibfk_1` FOREIGN KEY (`mabieumau`) REFERENCES `bieumau` (`mabieumau`),
  CONSTRAINT `thuchienbieumau_ibfk_2` FOREIGN KEY (`manhomtieuchi`) REFERENCES `nhomtieuchi` (`manhomtc`),
  CONSTRAINT `thuchienbieumau_ibfk_3` FOREIGN KEY (`matieuchi`) REFERENCES `tieuchi` (`matieuchi`),
  CONSTRAINT `thuchienbieumau_ibfk_4` FOREIGN KEY (`nguoithuchien`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuchienbieumau`
--

LOCK TABLES `thuchienbieumau` WRITE;
/*!40000 ALTER TABLE `thuchienbieumau` DISABLE KEYS */;
INSERT INTO `thuchienbieumau` VALUES ('BM2016-2017','truongbomon1','Chưa hoàn thành','BM2016-2017-1-1','BM2016-2017-1',9,0,10,0),('BM2016-2017','truongbomon1','Chưa hoàn thành','BM2016-2017-2-1','BM2016-2017-2',9,0,9,0),('BM2016-2017','truongbomon1','Chưa hoàn thành','BM2016-2017-3-1','BM2016-2017-3',6,0,10,0),('BM2016-2017','GV001','Chưa hoàn thành','BM2016-2017-1-1','BM2016-2017-1',9,10,10,0),('BM2016-2017','GV001','Chưa hoàn thành','BM2016-2017-1-2','BM2016-2017-1',9,0,6,0),('BM2016-2017','GV001','Chưa hoàn thành','BM2016-2017-1-3','BM2016-2017-1',9,0,0,0),('BM2016-2017','GV001','Chưa hoàn thành','BM2016-2017-2-1','BM2016-2017-2',9,0,0,0),('BM2016-2017','GV001','Chưa hoàn thành','BM2016-2017-2-2','BM2016-2017-2',9,0,0,0),('BM2016-2017','GV001','Chưa hoàn thành','BM2016-2017-3-1','BM2016-2017-3',9,0,0,0),('BM2016-2017','GV001','Chưa hoàn thành','BM2016-2017-3-2','BM2016-2017-3',9,0,0,0),('BM2016-2017','truongbomon1','Chưa hoàn thành','BM2016-2017-1-2','BM2016-2017-1',9,0,10,0),('BM2016-2017','GV008','Chưa hoàn thành','BM2016-2017-1-1','BM2016-2017-1',9,8,8,0),('BM2016-2017','GV008','Chưa hoàn thành','BM2016-2017-1-2','BM2016-2017-1',9,0,8,0),('BM2016-2017','GV008','Chưa hoàn thành','BM2016-2017-2-1','BM2016-2017-2',9,0,8,0),('BM2016-2017','GV008','Chưa hoàn thành','BM2016-2017-3-1','BM2016-2017-3',9,0,8,0),('BM2016-2017','truongkhoa1','Chưa hoàn thành','BM2016-2017-1-1','BM2016-2017-1',6,0,0,9),('BM2016-2017','truongkhoa1','Chưa hoàn thành','BM2016-2017-2-1','BM2016-2017-2',10,0,0,0),('BM2016-2017','truongkhoa1','Chưa hoàn thành','BM2016-2017-3-1','BM2016-2017-3',10,0,0,0),('BM2016-2017','truongkhoa1','Chưa hoàn thành','BM2016-2017-1-2','BM2016-2017-1',10,0,0,0),('BM2016-2017','GV008','Chưa hoàn thành','BM2016-2017-3-2','BM2016-2017-3',0,0,8,0),('BM2016-2017','truongbomon1','Chưa hoàn thành','BM2016-2017-2-2','BM2016-2017-2',0,0,10,0),('BM2016-2017','truongkhoa2','Chưa hoàn thành','BM2016-2017-1-2','BM2016-2017-1',6,0,0,6),('BM2016-2017','truongkhoa2','Chưa hoàn thành','BM2016-2017-1-3','BM2016-2017-1',9,0,0,6),('BM2016-2017','truongkhoa2','Chưa hoàn thành','BM2016-2017-2-1','BM2016-2017-2',6,0,0,4),('BM2016-2017','truongkhoa2','Chưa hoàn thành','BM2016-2017-2-2','BM2016-2017-2',8,0,0,0),('BM2016-2017','truongkhoa2','Chưa hoàn thành','BM2016-2017-3-1','BM2016-2017-3',9,0,0,0),('BM2016-2017','truongkhoa2','Chưa hoàn thành','BM2016-2017-3-2','BM2016-2017-3',9,0,0,0),('BM2016-2017','truongbomon2','Chưa hoàn thành','BM2016-2017-1-1','BM2016-2017-1',0,0,0,0),('BM2016-2017','truongbomon2','Chưa hoàn thành','BM2016-2017-1-2','BM2016-2017-1',0,0,0,0),('BM2016-2017','truongbomon2','Chưa hoàn thành','BM2016-2017-2-2','BM2016-2017-2',0,0,0,0);
/*!40000 ALTER TABLE `thuchienbieumau` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `phancongcv`
--

LOCK TABLES `phancongcv` WRITE;
/*!40000 ALTER TABLE `phancongcv` DISABLE KEYS */;
/*!40000 ALTER TABLE `phancongcv` ENABLE KEYS */;
UNLOCK TABLES;

