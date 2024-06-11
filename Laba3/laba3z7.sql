--Показать комбинированный список таблиц Person.AddressType,
--Person.ContactType по полям ID, Name, ModifiedDate,
--используя UNION.
SELECT "AddressTypeID" as ID, "Name", "ModifiedDate"
FROM "Person"."AddressType"
UNION
SELECT "ContactTypeID" as ID, "Name", "ModifiedDate"
FROM "Person"."ContactType";
