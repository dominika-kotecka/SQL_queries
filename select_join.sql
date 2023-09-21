-- Wyświetl imię oraz nazwisko wszystkich pracowników, nazwę działu, w którym pracują a także nazwę miasta, w którym siedzibę ma dany dział.

SELECT  concat(e.first_name, " ",e.last_name) as employee,
 d.department_name, l.city
FROM employees AS e 
INNER JOIN departments AS d ON e.department_id=d.id
INNER JOIN locations ON l ON d.location_id = l.id;
