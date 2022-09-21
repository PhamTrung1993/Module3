use demo;
create view product_view as
select productCode,productName,productPrice,productStatus
from product;
select * from product_view;
alter view product_view as
select productCode,productName,productAmount,productPrice,productStatus
from product;
select * from product_view;
update product_view 
set productAmount = 5
where productCode = 'A04';
select * from product_view;
drop view product_view;