--Написать скрипты на установку значений по умолчанию для тех
--полей, где это необходимо.
ALTER TABLE "Doctors"
ALTER COLUMN "Specialty" SET DEFAULT 'therapist';
