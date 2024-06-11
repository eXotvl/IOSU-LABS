-- Подсчет количества приемов у каждого врача
SELECT d.Full_Name, COUNT(rs.ID) AS Reception_Count
FROM Doctors d
JOIN Reception_schedule rs ON d.ID = rs.Doctor
GROUP BY d.Full_Name;