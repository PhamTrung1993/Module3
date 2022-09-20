use quanlysinhvien;

select Address, count(StudentId) as ' Số lượng học viên '
from Student
group by Address;

select S.StudentId,S.StudentName,avg(Mark)
from student S join mark M on S.StudentId = M.StudentId
group by S.StudentId, S.StudentName;

select S.StudentId,S.StudentName,avg(Mark)
from student S join mark M on S.StudentId = M.StudentId
group by S.StudentId, S.StudentName
having avg(mark) > 15;

select S.StudentId,S.StudentName,avg(Mark)
from student S join mark M on S.StudentId = M.StudentId
group by S.StudentId, S.StudentName
having avg(mark) >= all(select avg(mark) from mark group by mark.StudentId);