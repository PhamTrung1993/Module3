use quanlytourdulich;
insert into city(cityName)
values
('Hà Nội'),
('Hải Phòng'),
('Quảng Ninh'),
('Bắc Ninh'),
('Ninh Bình');

insert into categorytour(categoryCode,categoryName)
values
('A01','2 ngày 1 đêm'),
('A02','3 ngày 2 đêm');

insert into destination(destinationname,describes,cost,city_id)
value
('Văn Miếu','Lịch sử',100,1),
('Hạ Long','Vịnh',300,3),
('Bái Đính','chùa',150,5),
('Sầm Sơn','Bãi Biển',80,2),
('Yên Phong','Quan họ Bắc Ninh',80,4);

insert into tour(tourCode,category_id,destination_id,dateStart,dateEnd)
value
('T01',2,2,'2020-3-11','2020-3-13'),
('T02',1,2,'2020-3-11','2020-3-12'),
('T03',1,1,'2020-3-10','2020-3-11'),
('T04',1,3,'2020-3-1','2020-3-2'),
('T05',1,4,'2020-4-10','2020-4-11'),
('T06',1,5,'2020-4-8','2020-4-9'),
('T07',2,2,'2020-4-5','2020-4-7'),
('T08',2,1,'2020-3-31','2020-4-2'),
('T09',2,3,'2020-3-20','2020-3-22'),
('T10',2,4,'2020-4-21','2020-4-23'),
('T11',2,1,'2020-3-1','2020-3-3'),
('T12',2,3,'2020-3-16','2020-3-18'),
('T13',1,3,'2020-4-15','2020-4-16'),
('T14',1,2,'2020-3-18','2020-3-19'),
('T15',2,2,'2020-4-12','2020-4-14');

insert into clients(nameClients,idNumber,dateBirth,city_id)
values
('Trang','1234','1993-1-1',1),
('Trung','1235','1993-1-1',2),
('Trường','1244','1993-1-1',3),
('Thắng','1334','1993-1-1',4),
('Thùy','2234','1993-1-1',5),
('Thảo','1214','1993-1-1',5),
('Trương','1224','1993-1-1',4),
('Huy','1134','1993-1-1',3),
('Hoàng','1233','1993-1-1',2),
('Tiến','1222','1993-1-1',1);

insert into orderTour(tour_id,clients_id,statuss)
values
(1,1,'đã thanh toán'),
(2,2,'đã thanh toán'),
(3,3,'đã thanh toán'),
(4,4,'đã thanh toán'),
(5,5,'đã thanh toán'),
(6,6,'đã thanh toán'),
(7,7,'đã thanh toán'),
(8,8,'đã thanh toán'),
(9,9,'đã thanh toán'),
(10,10,'đã thanh toán');