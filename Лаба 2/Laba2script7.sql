--Рассчитать разницу между текущим и предыдущим числом часов больничного отпуска для каждого сотрудника.Таблица"HumanResources"."Employee". Лаба 2 Задание 7
select e."BusinessEntityID",
       e."SickLeaveHours",
lag(e."SickLeaveHours") over (order by e."BusinessEntityID" desc),
(e."SickLeaveHours"- lag(e."SickLeaveHours") over (order by e."BusinessEntityID" desc)) as Difference
from "HumanResources"."Employee" e 
order by e."BusinessEntityID"  desc;
