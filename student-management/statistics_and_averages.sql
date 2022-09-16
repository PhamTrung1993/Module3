use newstudentmanagement;
select count(student_id) from student;
select classes_id, count(student_id) as 'so luong hoc vien'
from student
group by classes_id;
-- select count(student.student_id),address from student inner join address on student.address_id = address.address_id and address.address_id = 1;
-- select count(student.student_id),address from student inner join address on student.address_id = address.address_id and address.address_id = 2;
-- select count(student.student_id),address from student inner join address on student.address_id = address.address_id and address.address_id = 3;
-- select count(student.student_id),address from student inner join address on student.address_id = address.address_id and address.address_id = 4;
-- select count(student.student_id),address from student inner join address on student.address_id = address.address_id and address.address_id = 5;
select address_id, count(student_id) as 'so luong hoc vien'
from student
group by address_id;

select C.course_id, C.course_name, avg(points)
from course C join points P on C.course_id = P.course_id
group by C.course_id, C.course_id;

select C.course_id, C.course_name, avg(points)
from course C join points P on C.course_id = P.course_id
group by C.course_id, C.course_id
having avg(points) >= all (select avg(points) from  points group by points.course_id);