Select * from employees;

-- Wyświetl imię oraz nazwisko wszystkich pracowników, nazwę działu, w którym pracują a także nazwę miasta, w którym siedzibę ma dany dział.

Select concat(e.first_name, " ",e.last_name) as employee,
 d.department_name, l.city
from employees as e 
inner join departments as d on e.department_id=d.id
inner JOIN locations as l on d.location_id = l.id;