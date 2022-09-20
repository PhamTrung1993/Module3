use quanlysinhvien;

select * 
from subjects 
group by Creadit
having  avg(Creadit) > all( select avg(Creadit) from  subjects);

select Sub.SubName,avg(mark)
from subjects Sub join mark M 
on Sub.SubId = M.SubId
group by Sub.subName
having avg(Mark) >= all(select avg(Mark) from mark group by  Mark.SubId);

select S.*,avg(mark) as avgpoint
from student S left join mark M 
on S.StudentId = M.StudentId
group by S.StudentId,S.StudentName
order by avgpoint desc;