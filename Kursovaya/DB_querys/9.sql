-- Получение списка пациентов, у которых есть приемы у врачей определенной специальности
SELECT p.Full_Name, s.Title
FROM Patients p
JOIN Reception_schedule rs ON p.ID = rs.Patient
JOIN Doctors d ON rs.Doctor = d.ID
JOIN Specialtys s ON d.Specialty = s.ID
WHERE s.Title = 'Терапевт';