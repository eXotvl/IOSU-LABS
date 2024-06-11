-- Получение списка пациентов с их номерами телефонов, отсортированных по дате рождения
SELECT Full_Name, Phone_number
FROM Patients
ORDER BY Date_of_birth DESC;