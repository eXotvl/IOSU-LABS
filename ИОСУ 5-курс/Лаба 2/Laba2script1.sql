--Выведите номер строки приёмов больных, докторами по убыванию. Лаба 2 Задание 1
select
    p.full_name
,    count(v.id) as visits_count
,    row_number() over (order by count(v.id) desc) as Number
from patients p
join visits v on p.id = v.patient_id
group by p.full_name
order by visits_count desc;