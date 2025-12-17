-- 1. Use Database
USE sept25;

-- 2. Create EMPLOYEE table
CREATE TABLE employee (
    eid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    salary INT,
    gender CHAR(1),
    age INT,
    address VARCHAR(50),
    j_date DATE,
    did INT
);

-- 3. Show table structure
DESC employee;

-- 4. Insert records
INSERT INTO employee (name, salary, gender, age, address, j_date, did)
VALUES
('Vinay', 23000, 'M', 22, 'Pune', '2022-09-15', 2),
('Prathmesh', 25000, 'M', 24, 'Mumbai', '2023-01-10', 1),
('Shivani', 29000, 'F', 23, 'Mumbai', '2022-09-15', 2),
('Pragati', 26000, 'F', 29, 'Mumbai', '2023-06-21', 1),
('Yogesh', 24000, 'M', NULL, 'Pune', '2023-03-12', 3);

-- 5. Display records
SELECT * FROM employee;

-- 6. Update address
UPDATE employee
SET address = 'Nanded'
WHERE name = 'Yogesh';

-- 7. Update gender using IN
UPDATE employee
SET gender = 'F'
WHERE eid IN (2, 4);

-- 8. Update age where NULL
UPDATE employee
SET age = 22
WHERE age IS NULL;

-- 9. Update with multiple conditions
UPDATE employee
SET age = 25
WHERE address = 'Pune' AND salary < 25000;

-- 10. Display updated table
SELECT * FROM employee;

-- 11. Create copy of table
CREATE TABLE emp_backup AS
SELECT * FROM employee;

-- 12. Delete specific record
DELETE FROM employee
WHERE eid = 1;

-- 13. Display after delete
SELECT * FROM employee;

-- 14. Truncate backup table
TRUNCATE TABLE emp_backup;

-- 15. Drop backup table
DROP TABLE emp_backup;

-- 16. Final display
SELECT * FROM employee;
