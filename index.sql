
-- drop previously created tables and create a branch table
CREATE TABLE branch (
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

-- create employee table with branch_id as foreign key. It refers to the branch_id of branch table.
CREATE TABLE employee (
emp_id INT PRIMARY KEY,
ename VARCHAR(30),
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_id));

-- droping FK
ALTER TABLE employee
DROP FOREIGN KEY FK_branchId;