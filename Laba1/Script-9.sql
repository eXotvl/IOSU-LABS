select
v."Name",
NULLIF("Name", 'Advanced Bicycles') 
AS "Name"
FROM "Purchasing"."Vendor" v 