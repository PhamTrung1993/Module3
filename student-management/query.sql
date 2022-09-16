use newstudentmanagement;
select * from student where student_fullname like 'Nguyen%';
select * from student where student_fullname like '%Anh';
select * from student where student_age >= 15 and student_age < 18;
select * from student where student_id = 12 or student_id = 13;