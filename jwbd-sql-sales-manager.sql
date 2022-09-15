create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer
(
ciD int not null auto_increment primary key,
cName varchar(50) not null,
cAge tinyint not null
);

create table Orders
(
oID int not null auto_increment primary key,
cID int not null,
oDate datetime not null,
oTotalPrice int not null,
foreign key(cID) references Customer(cID)
);

create table Product
(
pID int not null auto_increment primary key,
pName varchar(100) not null,
pPrice int not null
);
create table OrderDetail
(
oID int not null auto_increment primary key,
pID int not null,
odQTY varchar(50) not null,
unique (pID),
foreign key(oID) references Orders(oID),
foreign key(pID) references Product(pID)
);