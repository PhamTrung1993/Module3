use newstudentmanagement;
insert into  address(address)
value 
('Ha Noi'),
('Hai Phong'),
('Quang Ninh'),
('Ha Nam'),
('Thai Binh'),
('Bac Ninh');

insert into class(class_name,class_language,class_description)
value
('JS01','javascript','front-end'),
('JS02','javascript','front-end'),
('Jv01','java','back-end'),
('Jv02','java','back-end'),
('html01','html_css','design');

insert into student(student_fullname, address_id, student_age,student_phone, classes_id)
value
('Pham Trung',3,'29','091111111',3),
('Nguyen Trung',2,'27','099123123',1),
('Trung Anh',1,'28','092222222',2),
('Trung Em',4,'23','099999999',4),
('Hoang Anh',5,'25','098989898',5),
('Van Trung',6,'24','091234567',3),
('Nguyen Hoang',2,'20','098765432',4),
('Huy Hoang',1,'26','092525252',5),
('Huy anh',3,'27','091001001',1),
('Nguyen Huy',6,'29','090109193',2);

insert into course
value
(1,'full time','full stack'),
(2,'part time','front end'),
(3,'part time','back end'),
(4,'part time','design');

insert into points
value
(1,1,1,80),
(2,1,2,88),
(3,1,3,81),
(4,1,4,82),
(5,1,5,83),
(6,1,6,85),
(7,1,7,78),
(8,1,8,89),
(9,1,9,90),
(10,1,10,91),
(11,2,1,92),
(12,3,2,93),
(13,4,5,77),
(14,2,3,75),
(15,3,4,99);