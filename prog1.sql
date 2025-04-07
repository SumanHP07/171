CREATE DATABASE ai003_company;
USE ai003_company;
drop table Employee;
CREATE TABLE Employee
(
EMPNO INT,
ENAME VARCHAR(50),
JOB VARCHAR(50),
MANAGER_NO INT,
SAL DECIMAL(10, 2),
COMMISION DECIMAL(10,2)
);

start transaction;

INSERT INTO Employee
(EMPNO, ENAME, JOB, MANAGER_NO, SAL, COMMISION)
VALUES
	(1, 'John Doe', 'Manager', NULL, 5000.00, NULL),
	(2, 'Jane Smith', 'Developer', 1, 4000.00, 500.00),
    (3, 'Michael Johnson', 'Analyst', 1, 4500.00, NULL);
    
SELECT * FROM Employee;

ROLLBACK;
SELECT * FROM Employee;

ALTER TABLE Employee
ADD  CONSTRAINT PK_Employee_EMPNO PRIMARY KEY(EMPNO);

ALTER TABLE Employee MODIFY EMPNO INT NOT NULL;
ALTER TABLE Employee MODIFY ENAME VARCHAR(50) NOT NULL;

ALTER TABLE Employee MODIFY JOB VARCHAR(50) NOT NULL;
ALTER TABLE Employee MODIFY SAL DECIMAL(10,2) NOT NULL;

DESC Employee;

INSERT INTO Employee(EMPNO, ENAME, JOB, SAL) VALUES (4, 'Alice Johnson', NULL, 6000.00);
SELECT * FROM Employee;