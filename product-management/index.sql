use demo;
select * from product where productName = 'thỏ';
explain select * from product where productName = 'thỏ';
alter table product ADD index idx_productCode(productCode);
explain select * from product where productCode = 'A03';
alter table product  ADD index idx_productName(productName,productPrice);
explain select * from product where productName = 'thỏ';