--Написать скрипты на добавление ограничения NOT NULL для тех
--полей, где это необходимо.
ALTER TABLE "Doctors"
ALTER COLUMN "Full_Name" SET NOT NULL,
ALTER COLUMN "Specialty" SET NOT NULL;
