--Посчитать сумму часов болезни в диапазоне одной предшествующей и одной последующей строки для текущей строки.Таблица"HumanResources"."Employee". Лаба 2 Задание 6
select e."BusinessEntityID" 
	  ,e."SickLeaveHours" 
	  ,sum(e."SickLeaveHours") over (order by e."BusinessEntityID" rows between 1 preceding and 1 following) as Sum 
from "HumanResources"."Employee" e 
order by e."BusinessEntityID" 
