UPDATE employee
SET job_desc = "Analyst"; -- updates all job_desc of all rows to "Analyst" when safe update not enabled

UPDATE employee
SET job_desc = "Analyst"
WHERE job_desc = "Engineer"; -- changes Engineer to Analyst in all applicable rows

UPDATE employee
SET job_desc = "Analyst"
WHERE emp_id=1;

DELETE FROM employee; -- deletes all rows

DELETE from employee
WHERE emp_id = 12;

SELECT * FROM employee
WHERE ename = 'Ramya'; 

SELECT ename,emp_id,salary FROM employee
WHERE salary>2000000; 

SELECT emp_id,ename,salary FROM employee
WHERE salary<2600000 AND job_desc = 'MANAGER'; 

SELECT * FROM employee
WHERE job_desc='ADMIN' OR job_desc='HR'; -- though this works next command is a much better choice

SELECT * FROM employee
WHERE job_desc IN ('ADMIN','HR'); 

SELECT * FROM employee
WHERE job_desc NOT IN ('MANAGER','CEO');

SELECT * FROM employee
WHERE salary BETWEEN 2000000 AND 3000000
LIMIT 5; --limits the records shown 

SELECT * FROM employee
LIMIT 5;  -- Different syntax in oracle/sql server

SELECT * FROM employee
WHERE ename LIKE 'A%'; -- filters name starting with A

SELECT * FROM employee
WHERE ename LIKE 'R%a'; -- filters name starting WITH R AND ending with a

SELECT * FROM employee
WHERE ename LIKE '%I%'; -- filters name containing I

SELECT * FROM employee
WHERE ename LIKE '__m%'; -- filters name with i as third character

SELECT * FROM employee
WHERE ename LIKE 'R\%'; -- filters name starting with R%. \ is the escape character.

SELECT DISTINCT job_desc
FROM employee; -- shows only distinct values without duplicates

SELECT * FROM employee
ORDER BY salary; -- order by salary asc

SELECT * FROM employee
ORDER BY salary ASC; -- order by salary asc

SELECT * FROM employee
ORDER BY salary DESC; -- order by salary desc

SELECT * FROM employee
WHERE job_desc="MANAGER"
ORDER BY salary DESC; -- order the manager salaries in desc order

SELECT * FROM employee
ORDER BY job_desc,ename; -- first sorts by job_desc and then by ename

SELECT * FROM employee
ORDER BY (CASE job_desc -- specific order
WHEN 'CEO' THEN 1
WHEN 'MANAGER' THEN 2
WHEN 'HR' THEN 3
WHEN 'ANALYST' THEN 4
WHEN 'SALES' THEN 5
ELSE 100 END);