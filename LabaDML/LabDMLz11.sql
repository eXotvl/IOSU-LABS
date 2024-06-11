--В отдельном файле написать скрипт, который показывает работу с
--оператором MERGE.
MERGE INTO "Doctors" AS target
USING (VALUES
    (1, 'Абудаил', 'Шаман'),
    (11, 'Заиил', 'Лор')
) AS source ("ID", "Full_Name", "Specialty")
ON target."ID" = source."ID"
WHEN MATCHED THEN
    UPDATE SET "Full_Name" = source."Full_Name",
               "Specialty" = source."Specialty"
WHEN NOT MATCHED THEN
    INSERT ("ID", "Full_Name", "Specialty")
    VALUES (source."ID", source."Full_Name", source."Specialty");
