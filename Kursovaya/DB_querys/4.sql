-- Получение списка пациентов и их адресов
SELECT p.Full_Name, a.Adress
FROM Patients p
JOIN Adresses a ON p.Address = a.ID;