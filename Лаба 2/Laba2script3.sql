--Ранжируйте продавцов по сумме их продаж.Таблица "Sales"."SalesOrderHeader". Лаба2 Задание 3
select soh."SalesPersonID" 
	  ,sum(soh."SubTotal") as total
	  ,rank () over (order by sum(soh."SubTotal") desc) as rank 
from "Sales"."SalesOrderHeader" soh 
group by
soh."SalesPersonID" 
order by 
total desc;
