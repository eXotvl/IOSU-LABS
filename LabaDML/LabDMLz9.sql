--В отдельном файле написать скрипт, который изменяет данные в
--таблице по критерию.
UPDATE "TableWithDuplicates"
SET "Full_Name" = 'Не - ' || "Full_Name"
WHERE "Full_Name" LIKE 'Г%';
