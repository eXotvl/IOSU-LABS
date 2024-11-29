--Для каждого сотрудника выведите его идентификатор, время его приема на работу, а также ту же самую информацию для сотрудника, который был принят на работу сразу после него.
--Таблица"HumanResources"."Employee". Лаба 2 Задание 8
select e."BusinessEntityID",
		e."HireDate"
	  ,lead (e."BusinessEntityID") over (order by e."BusinessEntityID") as nextbid 
	  ,lead (e."HireDate") over (order by e."BusinessEntityID") as nexthd 
from "HumanResources"."Employee" e 
order by e."BusinessEntityID";
