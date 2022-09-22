create database quanlytourdulich;
use quanlytourdulich;
create table city(
id int not null auto_increment primary key,
cityName varchar(100)
);

create table destination(
id int not null auto_increment primary key,
destinationName varchar(255),
describes varchar(255),
cost int,
city_id int,
foreign key(city_id) references city (id)
);

create table categorytour(
id int not null auto_increment primary key,
categoryCode varchar(255),
categoryName varchar(255)
);


create table tour(
id int not null auto_increment primary key,
tourCode varchar(255),
category_id int,
destination_id int,
dateStart datetime,
dateEnd datetime,
foreign key(category_id) references categorytour(id),
foreign key(destination_id) references destination(id)
);

create table clients(
id int not null auto_increment primary key,
nameClients varchar(255),
idNumber varchar(255),
dateBirth datetime,
city_id int,
foreign key(city_id) references city(id)
);

create table ordertour(
id int not null auto_increment primary key,
tour_id int,
clients_id int,
statuss varchar(255),
foreign key(tour_id) references tour(id),
foreign key(clients_id) references clients(id)
);