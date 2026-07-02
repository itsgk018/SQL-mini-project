CREATE DATABASE company_management;
USE company_management;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE,
    location VARCHAR(50) DEFAULT 'Hyderabad'
);

Drop table emp;
CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK(age >= 18),
    salary DECIMAL(10,2),
    city VARCHAR(50) DEFAULT 'Hyderabad',
    dept_name VARCHAR(50),
    joining_date DATE
);

INSERT INTO emp VALUES
(101,'Arjun','arjun@gmail.com',25,55000,'Hyderabad','IT','2023-01-10'),
(102,'Bhavana','bhavana@gmail.com',28,45000,'Bangalore','HR','2022-03-15'),
(103,'Charan','charan@gmail.com',30,65000,'Chennai','Finance','2021-05-20'),
(104,'Divya','divya@gmail.com',26,50000,'Mumbai','Marketing','2023-02-11'),
(105,'Esha','esha@gmail.com',29,70000,'Pune','Operations','2020-07-14'),
(106,'Akhil','akhil@gmail.com',24,40000,'Hyderabad','IT','2022-09-01'),
(107,'Farhan','farhan@gmail.com',31,80000,'Bangalore','HR','2019-12-12'),
(108,'Geetha','geetha@gmail.com',27,48000,'Chennai','Finance','2021-08-18'),
(109,'Harsha','harsha@gmail.com',35,90000,'Mumbai','Marketing','2018-06-10'),
(110,'Indu','indu@gmail.com',23,42000,'Pune','Operations','2023-04-22'),
(111,'Ajay','ajay@gmail.com',32,76000,'Hyderabad','IT','2020-10-10'),
(112,'Kiran','kiran@gmail.com',29,58000,'Bangalore','HR','2021-01-01'),
(113,'Lavanya','lavanya@gmail.com',26,52000,'Chennai','Finance','2022-11-19'),
(114,'Manoj','manoj@gmail.com',34,85000,'Mumbai','Marketing','2019-05-25'),
(115,'Nisha','nisha@gmail.com',25,46000,'Pune','Operations','2023-03-03'),
(116,'Anitha','anitha@gmail.com',28,62000,'Hyderabad','IT','2022-02-14'),
(117,'Praveen',NULL,30,67000,'Bangalore','HR','2021-06-06'),
(118,'Rani','rani@gmail.com',27,49000,NULL,'Finance','2020-09-09'),
(119,'Suresh','suresh@gmail.com',33,78000,'Mumbai','Marketing','2018-08-08'),
(120,'Teja','teja@gmail.com',24,43000,'Pune','Operations','2023-05-05');

-- write all the quires of  DqL
 select * from emp;
select emp_name,salary from emp;
/*
select * from emp
where city = 'Hyderabad';
*/
/* select emp_name from emp where city = 'Hyderabad'; */
/*  select * from emp where salary > 50000; */
-- WHERE CLAUSE 
select * from emp where dept_name = 'IT';
 Select emp_name from emp where dept_name = 'IT';
select * from emp where city = 'Hyderabad' AND salary > 50000;
 select * from emp where dept_name = 'Finance' OR 'HR';
Select * from emp where city <>'Bangalore';
 -- LIKE, IN, BETWEEN
 Select * from emp where emp_name LIKE 'A%';
 Select * from emp where emp_name LIKE '%a';
SELECT * FROM emp WHERE city IN ('Hyderabad','Bangalore','Chennai');
-- SELECT * FROM emp WHERE salary between  40000 AND 50000;
        -- ORDER BY
select * from emp order by salary asc;
select * from emp order by salary desc;
-- select * from emp order by city, salary; (first it sort the city and then salary)
          -- AGGREGATE FUNCTIONS
select count(*) from emp;
select sum(salary) from emp;
 select avg(salary) from emp;
-- select max(salary) emp_name from emp;
-- select emp_name, salary from emp where salary = (select max(salary)from emp);(if we want by name)
                -- HAVING
-- select dept_name,count(*) from emp group by dept_name Having  count(*) > 3;
-- select dept_name,avg(salary) from emp group by dept_name having avg(salary) > 50000;
select city,count(*) from emp group by city having count(*) > 2;
                        -- INDEXING
	create index idx_empname on emp(emp_name);
    -- create unique index idx_email on emp(email);
    -- create index idx_deptname on emp(dept_name);
    show index from emp;
          -- – DCL–
-- create user 'hr_user' @'localhost' identified by 'hr123';
-- GRANT SELECT,UPDATE ON company_management.employees TO 'hr_user'@'localhost';
-- create user 'viewr_user' @'local host' identified by 'view123';
-- grant select on company_management.employees to 'viewr_user' @'local host';
-- show grants for 'hr_user' @'localhost';
                      -- BONUS CHALLENGES
select dept_name,avg(salary) avg_salary from emp group by dept_name order by avg(salary) Desc;
 SELECT city,SUM(salary) total_salary FROM employees GROUP BY city ORDER BY total_salary DESC;
-- SELECT dept_name,SUM(salary) FROM employees GROUP BY dept_name HAVING SUM(salary) > 200000;
           -- Create a report containing:
SELECT dept_name,
COUNT(*) AS emp_count,
SUM(salary) AS total_salary,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary
FROM emp GROUP BY dept_name;




















 
 









 
 
 








 