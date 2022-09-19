use quanlysinhvien;
select * from student;
select * from student
where status = true;

select * from subjects
where Creadit < 10;

select S.StudentId, S.StudentName, C.ClassName
from student S join class C on S.ClassId = C.ClassID;

select S.StudentId, S.StudentName, C.ClassName
from student S join class C on  S.ClassId = C.ClassID
where C.ClassName = 'A1';

select S.studentId, S.studentName, Sub.SubName, M.Mark
from student S join mark M on S.StudentId = M.StudentId join subjects Sub on M.SubId = Sub.SubId;

select S.studentId, S.studentName, Sub.SubName, M.Mark
from student S join mark M on S.StudentId = M.StudentId join subjects Sub on M.SubId = Sub.SubId
where Sub.SubName = 'CF';