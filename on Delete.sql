CREATE TABLE employee (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30) NOT NULL,
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_id) 
ON DELETE CASCADE -- on deleting a row in branch table, the corresponding entries in employee table will be deleted
);

CREATE TABLE employee (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30) NOT NULL,
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_id) 
ON DELETE SET NULL -- on deleting a row in branch table, the branchid corresponding entries in employee table will be made null
);