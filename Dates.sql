ALTER TABLE employee ADD COLUMN Hire_Date DATE; -- adding hire_date column


UPDATE  employee
SET Hire_Date="2012-10-05"; -- updating hire_date

UPDATE  employee
SET Hire_Date="2014-10-05"
WHERE job_desc = "ANALYST"; -- updating hire_date

SELECT NOW(); -- Current date and time 

SELECT DATE(NOW()); -- current date

SELECT CURDATE(); -- current system date

SELECT DATE_FORMAT(CURDATE(),'%d/%m/%Y'); -- to change the display format. use %d %m and %y or %Y in required format.

SELECT DATEDIFF(CURDATE(),'2020-01-01') DAYS; -- to calculate date difference