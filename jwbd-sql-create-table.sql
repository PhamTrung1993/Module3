CREATE DATABASE QuanLyDiemThi;
USE QuanLyDiemThi;
CREATE TABLE HocSinh(
MaHS VARCHAR(20) PRIMARY KEY,
TenHS VARCHAR(50),
NgaySinh DATETIME,
Lop VARCHAR(20),
GT VARCHAR(20)
);
CREATE TABLE MonHoc(
MaMH VARCHAR(20) PRIMARY KEY,
TenMH VARCHAR(50)
);
CREATE TABLE BangDiem(
MaHS VARCHAR(20),
MaMH varchar(20),
DiemThi int,
NgayKT datetime,

primary key (MaHS, MaMH),
foreign key (MaHS) references HocSinh(MaHs),
foreign key (MaMH) references MonHoc(MaMH)
);
create table GiaoVien(
MaGV varchar(20) primary key,
TenGV varchar(20),
SDT varchar(10)
);
alter table  MonHoc ADD MaGV varchar(20);
alter table MonHoc ADD constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);
