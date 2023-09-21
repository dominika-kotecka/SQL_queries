
-- Wyświetl imię oraz nazwisko wszystkich pracowników, nazwę działu, w którym pracują a także nazwę miasta, w którym siedzibę ma dany dział.

Select concat(e.first_name, " ",e.last_name) as employee,
 d.department_name, l.city
from employees as e 
inner join departments as d on e.department_id=d.id
inner JOIN locations as l on d.location_id = l.id;

-- Wyświetl nazwę wszystkich działów oraz nazwę miast, w których znajdują się dane działy. Rekordy sortuj alfabetycznie po kolumnie miasto

Select d.department_name, l.city
from departments as d
inner join locations as l on d.location_id=l.id
Order by city;


-- Wyświetl imię oraz datę urodzenia pracowników urodzony po 1 stycznia 1994 r. a także nazwę działu, w którym pracują.

select concat(e.first_name, " ", e.last_name) as name_last_name, e.birth_date, d.department_name
from employees as e
inner join departments as d on e.department_id=d.id
where birth_date>"1994-01-01";


