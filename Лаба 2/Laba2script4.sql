--Провести ранжирование (DENSE_RANK()) товаров по цене. Таблица "Production"."Product". Лаба 2 Задание 4
select p."ProductID" ,
p."ListPrice",
dense_rank () over (order by p."ListPrice" desc) as rank
from "Production"."Product" p 
group by 
p."ProductID" 
order by 
rank desc;

