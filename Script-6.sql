SELECT p."PersonType", 
p."NameStyle", 
coalesce ("Title", 'Dear')
as "Title",
   "FirstName", 
   "MiddleName", 
   "LastName"
FROM "Person"."Person" p 