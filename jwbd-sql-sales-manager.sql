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
oTotalPrice int,
foreign key(cID) references Customer(cID)
);

create table Product
(
pID int not null auto_increment primary key,
pName varchar(100) not null,
pPrice int 
);
create table OrderDetail
(
odID int not null auto_increment primary key,
oID int not null ,
pID int not null,
odQTY int not null,
foreign key(oID) references Orders(oID),
foreign key(pID) references Product(pID)
);