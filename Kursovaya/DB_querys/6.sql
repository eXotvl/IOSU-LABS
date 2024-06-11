-- Получение списка врачей, работающих на определенном участке
SELECT d.Full_Name, pl.Title
FROM Doctors d
JOIN Plot pl ON d.Plot = pl.ID
WHERE pl.Title = 'Северный';