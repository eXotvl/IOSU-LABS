-- Получение списка офисов с описанием, не имеющих запланированных приемов
SELECT o.Number, o.Descr
FROM Offices o
LEFT JOIN Reception_schedule rs ON o.ID = rs.Office
WHERE rs.ID IS NULL;