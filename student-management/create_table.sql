create database newstudentmanagement;
use newstudentmanagement;
create table class
(
class_id int not null auto_increment primary key,
class_name varchar(25) not null,
class_description varchar(50) not null
);

alter table class
add column class_language varchar(50) not null after class_name;
create table address
(
address_id int not null auto_increment primary key,
address varchar(100) not null
);

create table student
(
student_id int not null auto_increment primary key,
student_fullname  varchar(100) not null,
address_id int not null,
student_age tinyint not null,
student_phone varchar(15) unique,
classed_id int not null,
foreign key(address_id) references address(address_id),
foreign key(classed_id) references class(class_id)
);

create table course
(
course_id int not null primary key,
course_name varchar(100) not null,
course_description varchar(100) not null
);

create table points
(
point_id int not null primary key,
course_id int not null,
student_id int not null,
points int not null,
foreign key(course_id) references course(course_id),
foreign key(student_id) references student(student_id)
);