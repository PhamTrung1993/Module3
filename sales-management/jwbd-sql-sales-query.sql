use quanlybanhang;
select C.cName,P.pName
from customer C join orders O 
on C.cID = O.cID
join orderdetail OD
on O.oID = OD.oID
join product P
on P.pID = OD.pID;

select cName
from customer
where cName 
Not in(select C.cName
from customer C join orders O
on C.cID = O.cID);

 select O.oId,O.cId,O.oDate,sum(P.pPrice*OD.odQTY) as oTotalPrice
from Orders O join orderdetail OD
on O.oID = OD.oID
join Product P
on OD.pID = P.pID
group by o.oId;
 