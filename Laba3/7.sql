SELECT "AddressTypeID" as ID, "Name", "ModifiedDate"
FROM "Person"."AddressType"
UNION
SELECT "ContactTypeID" as ID, "Name", "ModifiedDate"
FROM "Person"."ContactType";
