-- Получение списка пациентов, родившихся после определенной даты
SELECT Full_Name, Date_of_birth
FROM Patients
WHERE Date_of_birth > '2000-01-01';