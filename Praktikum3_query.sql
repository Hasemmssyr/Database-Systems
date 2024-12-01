-- number1
SELECT animals.name AS animal_name, attractions.name AS attraction_name
FROM animals
JOIN animals_attractions ON animals.id = animals_attractions.animals_id
JOIN attractions ON animals_attractions.attractions_id = attractions.id
WHERE HOUR(attractions.schedule_start) >= 9 AND HOUR(attractions.schedule_end) <= 15;


-- number 2
with cte as (
    select animals_id from animals_attractions
    where attractions_id = (select id from attractions where name = 'night spectacular')
)
select distinct types.species from types
join animals on types.id = animals.types_id
where animals.id in (select animals_id from cte);

-- number 3
select * from animals where id not in (select animals_id from animals_attractions group by animals_id);

-- number 4
select (select count(id) as certificated from employee where certification is not null) as totalCertified, 
(select count(id) from employee) as total, 
((select count(id) from employee where certification is not null)*100/(select count(id) as total from employee)) as percentage;

-- number 5
SELECT animals.name AS animal_name, SUM(attractions.price) AS total_revenue
FROM animals
JOIN animals_attractions ON animals.id = animals_attractions.animals_id
JOIN attractions ON animals_attractions.attractions_id = attractions.id
GROUP BY animals.name
ORDER BY total_revenue DESC;

-- number 6
SELECT attractions.*
FROM attractions
LEFT JOIN attractions_employee ON attractions.id = attractions_employee.attractions_id
LEFT JOIN employee ON attractions_employee.employee_id = employee.id
WHERE attractions.price = 0 AND (employee.type <> 'healthcare');

-- number 7
SELECT a.name AS Attraction_Name, a.place AS Location,
CASE WHEN e.certification IS NOT NULL THEN 'YES' ELSE 'NO' END AS Certified_Employee_Status
FROM attractions a
JOIN attractions_employee ae ON a.id = ae.attractions_id
JOIN employee e ON ae.employee_id = e.id;

-- number 8
SELECT 
    animals.name,
    attractions.place,
    COUNT(*) * 100.0 / (SELECT COUNT(*) 
                        FROM animals_attractions 
                        JOIN attractions ON animals_attractions.attractions_id = attractions.id
                        WHERE attractions.place = attractions.place
                        AND animals_attractions.animals_id <> 'A03') AS Usage_Percentage
FROM animals
JOIN animals_attractions ON animals.id = animals_attractions.animals_id
JOIN attractions ON animals_attractions.attractions_id = attractions.id
WHERE animals.id <> 'A03'
GROUP BY animals.name, attractions.place
ORDER BY animals.name, attractions.place;

-- number 9
SELECT 
    employee.name,
    employee.type,
    COUNT(attractions_employee.attractions_id) AS Number_of_Attractions,
CASE
    WHEN employee.type = 'senior ranger' THEN COUNT(attractions_employee.attractions_id) * 35 * 30
    WHEN employee.type = 'ranger' THEN COUNT(attractions_employee.attractions_id) * 25 * 30
    WHEN employee.type = 'healthcare' THEN COUNT(attractions_employee.attractions_id) * 19 * 30
    ELSE 0
END AS Monthly_Revenue
FROM employee
JOIN attractions_employee ON employee.id = attractions_employee.employee_id
GROUP BY employee.name, employee.type;

-- number 10
SELECT DISTINCT employee.name, employee.id
FROM employee
JOIN attractions_employee ON employee.id = attractions_employee.employee_id
JOIN animals_attractions ON attractions_employee.attractions_id = animals_attractions.attractions_id
JOIN animals ON animals_attractions.animals_id = animals.id
JOIN types ON animals.types_id = types.id
WHERE types.genus = 'seal';
