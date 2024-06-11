--Показать поля ProductID, BusinessEntityID,
--AverageLeadTime, StandardPrice из таблицы
--Purchasing.ProductVendor, для товаров, имеющих цену продажи
--(поле не пустое) при последней покупке (LastReceiptCost).
select pv."ProductID",
       pv."BusinessEntityID", 
	  pv."AverageLeadTime", 
	  pv."StandardPrice" 
from "Purchasing"."ProductVendor" pv 
where pv."LastReceiptCost" notnull 