select pv."ProductID",
       pv."BusinessEntityID", 
	  pv."AverageLeadTime", 
	  pv."StandardPrice" 
from "Purchasing"."ProductVendor" pv 
where pv."LastReceiptCost" notnull 