-- Получение списка всех приемов, запланированных на следующую неделю
SELECT rs.Date_and_time, d.Full_Name AS Doctor, p.Full_Name AS Patient, o.Number AS Office_Number
FROM Reception_schedule rs
JOIN Doctors d ON rs.Doctor = d.ID
JOIN Patients p ON rs.Patient = p.ID
JOIN Offices o ON rs.Office = o.ID
WHERE rs.Date_and_time BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days';