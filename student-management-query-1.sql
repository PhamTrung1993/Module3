use QuanLySinhVien;
select * from student
where StudentName Like 'H%';

select * from class
where month(StarDate) = 12;

select * from subjects
where Creadit between 3 and 5;

update student
set ClassId = 2
where StudentId = 1;

select S.StudentName,Sub.SubName,M.Mark
from Student S join Mark M on S.StudentId = M.StudentId join Subjects Sub on M.SubId = Sub.SubId

order by M.mark desc, S.StudentName asc;



-- where M.mark in(
-- select S.StudentName,Sub.SubName,M.Mark
-- from Student S join Mark M on S.StudentId = M.StudentId join Subjects Sub on M.SubId = Sub.SubId
-- having count(M.mark) > 1
-- )


