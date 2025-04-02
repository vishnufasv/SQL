CREATE TABLE employee1 (
emp_id INT PRIMARY KEY AUTO_INCREMENT, -- id will be auto incremented for new rows
ename VARCHAR(30) NOT NULL, -- null value cannot be inserted for the column
job_desc VARCHAR(20) DEFAULT 'unassigned', -- sets default when not mentioned
salary INT,
pan VARCHAR(10) UNIQUE,-- cannot contain duplicates
CHECK (salary>=10000)); 

INSERT INTO employee1(ename,salary) VALUES ('Ramya',1000001);
INSERT INTO employee(ename,salary) VALUES ('Riya',10000); -- erros because of violation of salary check constraint
SELECT * FROM employee1;