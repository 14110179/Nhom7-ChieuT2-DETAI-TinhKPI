create database CSDLWEBKPI;
use CSDLWEBKPI;
create table role
(
	roleid int primary key,
    rolename nvarchar(100)
);
insert into role value(1,"Giảng Viên");
insert into role value(2,"Hiệu Trưởng");
insert into role value(3,"Trưởng Khoa");
insert into role value(4,"Trưởng Bộ Môn");
insert into role value(5,"Phòng TCCB");
insert into role value(6,"Admin");

create table users
(
	username char(20) primary key,
    pass char(20),
    hoten nvarchar(100),
    ngaysinh date,
    gioitinh bit,
    noisinh nvarchar(100),
    dantoc nvarchar(100),
    socmnd char(20),
    tongiao nvarchar(100),
    diachi nvarchar(500),
    sdt char(15),
    email char(100),
    ghichu nvarchar(500),
    roleid int,
    foreign key (roleid) references role(roleid)
);
insert into users value("GV001","123456","Nguyễn Văn A","1996/10/20",1,"Biên Hòa","Kinh","286512324","Không","Số 1 Võ Văn Ngân","09099090090","","Không có ghi chú",1);
insert into users value("GV008","123456","Nguyễn Văn B","1996/10/20",1,"Biên Hòa","Kinh","286512324","Không","Số 1 Võ Văn Ngân","09099090090","","Không có ghi chú",1);
insert into users value("GV002","123456","Nguyễn Văn B","1996/10/20",1,"Biên Hòa","Kinh","286512324","Không","Số 1 Võ Văn Ngân","09099090090","","Không có ghi chú",2);
insert into users value("GV003","123456","Nguyễn Văn C","1996/10/20",0,"Biên Hòa","Kinh","286512324","Không","Số 1 Võ Văn Ngân","09099090090","","Không có ghi chú",3);
insert into users value("GV004","123456","Nguyễn Văn D","1996/10/20",0,"Biên Hòa","Kinh","286512324","Không","Số 1 Võ Văn Ngân","09099090090","","Không có ghi chú",4);
insert into users value("GV005","123456","Nguyễn Văn E","1996/10/20",0,"Biên Hòa","Kinh","286512324","Không","Số 1 Võ Văn Ngân","09099090090","","Không có ghi chú",5);
insert into users value("admin","123456","Nguyễn Văn F","1996/10/20",1,"Biên Hòa","Kinh","286512324","Không","Số 1 Võ Văn Ngân","09099090090","","Không có ghi chú",6);
create table bieumau
(
	mabieumau int primary key,
    tenbieumau nvarchar(100),
    namhoc char(50),
    nguoitao char(20),
    foreign key (nguoitao) references users(username)
) ;
create table nhomtieuchi
(
	manhomtc int primary key,
    tennhomtc nvarchar(100),
    mabieumau int ,
    foreign key (mabieumau) references bieumau(mabieumau)
);
create table tieuchi
(
	matieuchi int primary key,
    tentieuchi nvarchar(500),
    manhomtc int,
    mabieumau int,
    diemtudanhgia int,
    diemtruongbomon int,
    diemtruongkhoa int,
    diembgh int,
    foreign key (mabieumau) references bieumau(mabieumau),
    foreign key (manhomtc) references nhomtieuchi(manhomtc)
);
create table thongbao
(
	mathongbao int primary key,
    tenthongbao nvarchar(200),
    noidung nvarchar(1000),
    nguoigui char(20),
    thoigian datetime,
    nguoinhan char(20),
    trangthai nvarchar(100),
    foreign key (nguoigui) references users(username),
    foreign key (nguoinhan) references users(username)
);
create table phancongcv
(
	nguoiphancong char(20),
    nguoithuchien char(20),
    mabieumau int,
    matieuchi int,
    ngayhoanthanh date,
    trangthai nvarchar(100),
    diemtudanhgia int,
    diemtruongkhoa int,
    diemtruongbomon int,
    foreign key (nguoiphancong) references users(username),
    foreign key (nguoithuchien) references users(username),
    foreign key (mabieumau) references bieumau(mabieumau),
    foreign key (matieuchi) references tieuchi(matieuchi)
);
create table thuchienbieumau
(
	mabieumau int,
    nguoithuchien char(20),
    trangthai nvarchar(100),
    matieuchi int,
    diemtudanhgia int,
    diemtruongbomon int,
    diemtruongkhoa int,
    diembangiamhieu int,
    foreign key (mabieumau) references bieumau(mabieumau),
    foreign key (matieuchi) references tieuchi(matieuchi),
    foreign key (nguoithuchien) references users(username)
);