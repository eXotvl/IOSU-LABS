--Выведите номер строки каждого из продавцов в порядке убывания их
--суммы продаж. Таблица "Sales"."SalesOrderHeader". Лаба 2 Задание 1
select soh."SalesPersonID"  
	  ,sum(soh."SubTotal") as total
      ,row_number () over (order by sum("SubTotal") desc) as Number
from "AdwentureWorksPostgresPro"."Sales"."SalesOrderHeader" soh 
group by
    soh."SalesPersonID"
order by
    sum("SubTotal") desc;
