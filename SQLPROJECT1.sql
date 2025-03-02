CREATE DATABASE IF NOT EXISTS ABC;
USE ABC;

CREATE TABLE Employee
(id INT PRIMARY KEY, name VARCHAR(20), city VARCHAR(20), department VARCHAR(20), salary INT);

SELECT * FROM Employee;

SELECT * FROM Employee
WHERE salary between 50001 and 69999;

SELECT * FROM Employee
WHERE salary > 50000 and salary <70000;

SELECT * FROM Employee
WHERE salary = 80000; 
SELECT * FROM Employee
WHERE salary != 80000; 

SELECT * FROM Employee
WHERE salary > 70000 and department = "IT"; 

SELECT * FROM Employee
WHERE city like "L%" OR city like "%S"; 

SELECT * FROM Employee
WHERE city like "%o%"; 

select count(department), department from
Employee
group by department;

select * from
Employee as A
left join Company as B
on a.id = b.id
union
select * from
Employee as A
right join Company as B
on a.id = b.id;

select * from
Company as A
left join Department as B
on a.id = b.id
union
select * from
Company as A
left join Department as B
on a.id = b.id;

SELECT * FROM Employee
WHERE name = "peter"; 

SELECT * FROM Employee
WHERE department = "IT"; 










INSERT INTO Employee
VALUES
(1, "David", "London", "IT", 80000),
(2, 'Emily', 'London', 'IT', 70000),
(3, 'Peter', 'Paris', 'IT', 60000),
(4, 'Ava', 'Paris', 'IT', 50000),
(5, 'Penny', 'London', 'Management', 110000),
(6, 'Jim', 'London', 'Management', 90000),
(7, 'Amy', 'Rome', 'Support', 30000),
(8, 'Cloe', 'London', 'IT', 110000);

update Employee
set department = "Management"
Where id = 1;

DELETE FROM  Employee
WHERE salary >100000;

SELECT name, city
FROM Employee;

CREATE TABLE Department (id INT, name VARCHAR(30));

SELECT * FROM Department;

INSERT INTO Department (id, name)
VALUES
(1, 'IT'),
(2, 'Management'),
(3, 'IT'),
(4, 'Support');

CREATE TABLE Comapany(id INT, name VARCHAR(30), revenue INT);
INSERT INTO Company (id , name, revenue)
VALUES
(1, 'IBM', 2000000),
(2, 'GOOGLE', 9000000),
(3, 'Apple', 10000000);
SELECT * FROM Company;
Select name from Company;

select *
from company
where revenue > 5000000;

select *
from company
where revenue < 5000000;

select * from company
where revenue between 0 and 4999999;





ALTER TABLE Comapany
RENAME Company;







