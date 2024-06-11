-- Получение расписания приемов в определенном офисе по его номеру
SELECT rs.Date_and_time, d.Full_Name AS Doctor, p.Full_Name AS Patient
FROM Reception_schedule rs
JOIN Doctors d ON rs.Doctor = d.ID
JOIN Patients p ON rs.Patient = p.ID
JOIN Offices o ON rs.Office = o.ID
WHERE o.Number = 102;