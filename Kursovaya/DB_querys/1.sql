-- Получение списка всех врачей с их специальностями
SELECT d.Full_Name, s.Title
FROM Doctors d
JOIN Specialtys s ON d.Specialty = s.ID;