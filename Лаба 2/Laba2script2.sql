--Выведите номер строки каждого из сотрудников по их полу для каждой Лаба 2 Задание2
--из дат найма на работу. Таблица "HumanResources"."Employee".
select e."Gender" 
	  ,e."HireDate" 
	  ,e."BusinessEntityID" 
	  ,row_number () over (partition by "Gender", "HireDate" order by "BusinessEntityID") as number
from "HumanResources"."Employee" e 
order by "Gender" 
	    ,"HireDate" 
