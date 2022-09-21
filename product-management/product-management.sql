create database demo;
use demo;
create table product(
id int not null auto_increment primary key,
productCode varchar(20),
productName varchar(50),
productPrice int,
productAmount tinyint,
productDescription varchar(100),
productStatus varchar(100),
unique(productCode)
); 
insert into product
(productCode,productName,productPrice,productAmount,productDescription,productStatus)
value
('A01','Vịt',150,5,'vịt cỏ','còn sống'),
('A02','Gà',120,5,'Gà ta','còn sống'),
('A03','Lợn',5000,3,'Lợn mán','còn sống'),
('A04','Thỏ',200,10,'Thỏ','còn sồng'),
('A05','Bò',25000,2,'Bò sữa','còn sồng'),
('A06','Dê',10000,4,'Dê','còn sồng');