use demo;
-- DELIMITER // dùng để phân cách bộ nhớ lưu trữ thủ tục Cache và mở ra một ô lưu trữ mới. 
-- Đây là cú pháp nên bắt buộc bạn phải nhập như vậy 
-- BEGIN và END; // dùng để khai báo bắt đầu của Procedure và kết thúc Procedure
-- Cuối cùng là đóng lại ô lưu trữ DELIMITER ; 
DELIMITER //

create procedure findAddProduct()
begin

select * from product;

end //

delimiter ;

call findAddProduct();

delimiter //

create procedure addNewProduct
( in proCode varchar(20),
proName varchar(50),
proPrice int(100),
proAmount tinyint(20),
proDescription varchar(100),
proStatus varchar(100)
)
begin

insert into product
(productCode,productName,productPrice,productAmount,productDescription,productSatus)
values
(proCode,proName,proPrice,proAmount,proDescription,proStatus);

end //
delimiter ;

call addNewProduct('A08','Trâu',25000,1,'Trâu chọi','Còn sống');

delimiter //

create procedure updateProduct
(
in proId int,
proCode varchar(20),
proName varchar(50),
proPrice int(100),
proAmount tinyint(20),
proDescription varchar(100),
proStatus varchar(100)
)
begin
update product
set
productCode = proCode,
productName = proName,
productPrice = proPrice,
productAmount = proAmount,
productDesciption = proDesciption,
productStatus = proStatus
where id = proId;
end //
delimiter ;
call updateProduct(8,'A02','Gà',130,2,'Gà ta','còn sống');

delimiter //
create procedure deleteProduct( in proId int(100))
begin
delete from product where id = proId;
end //

delimiter ;

call deleteProduct(13);
select * from product;
