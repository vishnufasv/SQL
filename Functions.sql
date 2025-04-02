SELECT COUNT(*) FROM employee; -- total count of entries in the table

SELECT AVG(salary) FROM employee; -- avg salary of all employees

SELECT AVG(salary) 
FROM employee
WHERE job_desc="MANAGER"; -- avg salary of managers

SELECT SUM(salary)
FROM employee
WHERE job_desc="MANAGER"; -- total salary given to all analysts

SELECT * FROM employee
WHERE salary = (SELECT Max(salary)
FROM employee);  -- display the employee with 

SELECT MIN(salary) FROM employee;

 
SELECT ename,CHAR_LENGTH(ename)
FROM employee; 

SELECT ename,CONCAT("Rs.",salary)
FROM employee; -- adds Rs. to the beginning of salary

SELECT ename,CONCAT("Rs.",FORMAT(salary,0))
FROM employee; -- formats the number to add comma. The second argument(0 here) represents digits to round off after decimal

SELECT ename,LEFT(job_desc,4)
FROM employee; -- returns only the first 4 characters of the ename