create database demo;
use demo;
create table users (
id int(3) not null auto_increment,
dname varchar(120) not null,
email varchar(220) not null,
country varchar(120),
primary key(id)
); 

insert into users(dname, email, country)
values			 ('Minh','Minh@codegym.vn','Viet Nam'),
				 ('Kante','kante@che.uk','Kenia');
					