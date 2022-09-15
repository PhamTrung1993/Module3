create database QuanLyVatTu;
use QuanLyVattu;
create table PhieuXuat
(
SoPX int not null auto_increment primary key,
NgayXuat datetime not null
);

create table VatTu
(
MaVTu int not null auto_increment primary key,
TenVtu varchar(50) not null
);

create table ChiTietPhieuXuat
(
SoPX int not null auto_increment primary key,
DGXuat varchar(100) not null,
SLXuat int not null,
MaVTu int not null,
foreign key(SoPX) references PhieuXuat(SoPX),
foreign key(MaVTu) references VatTu(MaVTu)
);
create table PhieuNhap
(
SoPN int not null auto_increment primary key,
ngayNhap datetime not null
);
create table ChiTietPhieuNhap
(
MaVTu int not null auto_increment primary key,
SoPN int not null,
DGNhap varchar(100) not null,
SLNhap int not null,
foreign key(MaVTu) references VatTu(MaVTu),
foreign key(SoPN) references PhieuNhap(SoPN)
);

create table DonDH
(
SoDH int not null auto_increment primary key,
NgayDH datetime not null
);

create table ChiTietDonDatHang
(
MaVTu int not null auto_increment primary key,
SoDH int not null,
foreign key(MaVTu) references VatTu(MaVTu),
foreign key(SoDH) references DonDH(SoDH)
);

create table NhaCC
(
MaNCC int not null auto_increment primary key,
TenNCC varchar(100) not null,
DiaChi varchar(255) not null
);

create table SDT_NhaCC
(
MaNCC int not null auto_increment primary key,
SDT varchar(20) not null,
foreign key(MaNCC) references NhaCC(MaNCC)
);
 
create table CungCap
(
SoDH int not null auto_increment primary key,
MaNCC int not null,
foreign key(SoDH) references DonDH(SoDH),
foreign key(MaNCC) references NhaCC(MaNCC)
);
 
