use quanlykhovattu;
insert into vattu(mavattu,tenvattu,donvitinh,giatien)
value
('V01','Dây cáp điện','mét',50),
('V02','Băng cách nhiệt','cuộn',25),
('V01','Hộp phân phối','hộp',100),
('V01','ống nhựa','ống',150),
('V01','khớp nối','cái',10);

insert into tonkho(vattu_id,soluongdau,tongsoluongnhap,tongsoluongxuat)
values
(1,500,500,300),
(2,1000,200,500),
(3,200,150,100),
(4,100,100,80),
(5,2000,1000,1500);

insert into nhacungcap
values
(1,'N01','CaDiVi','Hà Nội','0961231238'),
(2,'N02','DaPhaCo','Hà Nội','0961231238'),
(3,'N03','Bình Minh','Hà Nội','0961231238');

insert into dondathang
values
(1,'D01','2022-5-15',2),
(2,'D02','2022-5-16',1),
(3,'D03','2022-5-17',3);

insert into phieunhap
values
(1,'N01','2022-5-17',3),
(2,'N02','2022-5-18',2),
(3,'N03','2022-5-19',1);

insert into phieuxuat(maphieuxuat,ngayxuat,tenkhachhang)
value
('X01','2022-6-15','Trung'),
('X02','2022-6-16','Quân'),
('X03','2022-6-17','Hoàng');

insert into chitietdonhang(donhang_id,vattu_id,soluongdat)
values
(1,2,200),
(2,3,50),
(3,4,100),
(1,5,1200),
(2,1,500),
(3,3,100);

insert into chitietphieunhap(phieunhap_id,vattu_id,soluongnhap,dongianhap,ghichu)
values
(3,5,2000,8,'Đang thiếu hàng'),
(2,4,100,75,'Đang thiếu hàng'),
(1,3,150,140,'Đang thiếu hàng'),
(2,2,500,20,'Đang thiếu hàng'),
(3,1,1000,20,'Đang thiếu hàng'),
(1,3,200,140,'Đang thiếu hàng');

insert into chitietphieuxuat(phieuxuat_id,vattu_id,soluongxuat,dongiaxuat,ghichu)
values
(1,2,1000,25,'đã đủ hàng'),
(2,1,800,50,'đã đủ hàng'),
(3,5,2000,10,'đã đủ hàng'),
(3,4,300,150,'đã đủ hàng'),
(2,3,100,100,'đã đủ hàng'),
(1,2,700,25,'đã đủ hàng');