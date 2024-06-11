--В отдельном файле написать скрипт, который создает таблицу,
--имеющую дубликаты строк. Написать скрипт, который удаляет
--дубликаты.
DELETE FROM "TableWithDuplicates"
WHERE ctid NOT IN (
  SELECT min(ctid)
  FROM "TableWithDuplicates"
  GROUP BY "Full_Name"
);
