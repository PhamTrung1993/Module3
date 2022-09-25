create database quanlykhovattu;
use quanlykhovattu;
create table vattu( 
id int not null auto_increment primary key,
mavattu varchar(25),
tenvattu varchar(100),
donvitinh varchar(50),
giatien int
);

create table tonkho(
id int not null auto_increment primary key,
vattu_id int,
soluongdau int,
tongsoluongnhap int,
tongsoluongxuat int,
foreign key(vattu_id) references tonkho(id)
);

create table nhacungcap(
id int not null primary key,
manhacungcap varchar(25),
tennhacungcap varchar(50),
diachi varchar(50),
sodienthoai varchar(25)
);

create table dondathang(
id int not null primary key,
madon varchar(25),
ngaydathang datetime,
nhacungcap_id int,
foreign key(nhacungcap_id) references nhacungcap(id)
);

create table phieunhap(
id int not null primary key,
maphieunhap varchar(25),
ngaynhap datetime,
donhang_id int,
foreign key(donhang_id) references dondathang(id)
);

create table phieuxuat(
id int not null auto_increment primary key,
maphieuxuat varchar(25),
ngayxuat datetime,
tenkhachhang varchar(50)
);

create table chitietdonhang(
id int auto_increment not null primary key,
donhang_id int,
vattu_id int,
soluongnhap int,
dongianhap int,
ghichu varchar(100),
foreign key(donhang_id) references dondathang(id),
foreign key(vattu_id) references vattu(id)
);

create table chitietphieuxuat(
id int not null auto_increment primary key,
phieuxuat_id int,
vattu_id int,
soluongxuat int,
dongiaxuat int,
ghichu varchar(100),
foreign key(phieuxuat_id) references phieuxuat(id),
foreign key(vattu_id) references vattu(id)
);

create table chitietphieunhap(
id int not null auto_increment primary key,
phieunhap_id int,
vattu_id int,
soluongnhap int,
dongianhap int,
ghichu varchar(100),
foreign key(phieunhap_id) references phieunhap(id),
foreign key(vattu_id) references vattu(id)
);

