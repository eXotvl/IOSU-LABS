--Показать номера телефонов (PhoneNumber) и поля PersonType,
--FirstName, LastName из таблиц Person.Person,
--Person.PersonPhone.
SELECT "pp"."PhoneNumber",
       "p"."PersonType",
       "p"."FirstName",
       "p"."LastName"
FROM "Person"."Person" "p"
JOIN "Person"."PersonPhone" "pp" ON "p"."BusinessEntityID" = "pp"."BusinessEntityID";