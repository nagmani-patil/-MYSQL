/* ===============================
   DATABASE CREATION
   =============================== */
CREATE DATABASE company;
USE company;

/* ===============================
   DEPARTMENT TABLE
   =============================== */
CREATE TABLE dept (
    dno INT PRIMARY KEY,
    dname VARCHAR(50),
    location VARCHAR(50)
);

/* ===============================
   EMPLOYEE TABLE
   =============================== */
CREATE TABLE employee (
    eid INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender CHAR(1),
    salary INT,
    address VARCHAR(50),
    j_date DATE,
    did INT,
    FOREIGN KEY (did) REFERENCES dept(dno)
    ON DELETE SET NULL
);

/* ===============================
   CLOTHS TABLE (ENUM EXAMPLE)
   =============================== */
CREATE TABLE cloths (
    cid INT,
    type VARCHAR(20),
    price INT,
    size ENUM('S','M','L','XL','XXL')
);

/* ===============================
   INSERT DATA INTO DEPT
   =============================== */
INSERT INTO dept VALUES
(1, 'Admin', 'Mumbai'),
(2, 'HR', 'Pune'),
(3, 'IT', 'Nanded');

/* ===============================
   INSERT DATA INTO EMPLOYEE
   =============================== */
INSERT INTO employee VALUES
(101, 'Sonal', 23, 'F', 26000, 'Pune', '2022-03-15', 1),
(102, 'Amit', 28, 'M', 30000, 'Mumbai', '2021-07-10', 2),
(103, 'Snehal', 22, 'F', 24000, 'Nanded', '2022-01-20', 3),
(104, 'Rahul', 25, 'M', 35000, 'Parbhani', NULL, NULL),
(105, 'Sunil', 24, 'M', 28000, 'Pune', '2023-02-11', 1);

/* ===============================
   BASIC SELECT
   =============================== */
SELECT * FROM employee;

/* ===============================
   WHERE CONDITIONS
   =============================== */
SELECT * FROM employee WHERE gender = 'M';

SELECT * FROM employee
WHERE age >= 22 AND address = 'Pune';

/* ===============================
   COLUMN SELECT
   =============================== */
SELECT eid, j_date, name FROM employee;

SELECT name, salary, age
FROM employee
WHERE salary > 25000 AND did = 1;

/* ===============================
   BETWEEN
   =============================== */
SELECT name, salary
FROM employee
WHERE salary BETWEEN 25000 AND 30000;

/* ===============================
   DATE RANGE
   =============================== */
SELECT *
FROM employee
WHERE j_date BETWEEN '2022-01-01' AND '2022-12-31';

/* ===============================
   IN / NOT IN
   =============================== */
SELECT eid, name, salary
FROM employee
WHERE address IN ('Nanded', 'Parbhani');

SELECT eid, name, salary
FROM employee
WHERE address NOT IN ('Nanded', 'Parbhani');

/* ===============================
   NULL CHECK
   =============================== */
SELECT * FROM employee WHERE did IS NULL;
SELECT * FROM employee WHERE did IS NOT NULL;

/* ===============================
   FEMALE EMPLOYEES WITH JOIN DATE
   =============================== */
SELECT j_date, eid, salary
FROM employee
WHERE j_date IS NOT NULL AND gender = 'F';

/* ===============================
   LIKE PATTERNS
   =============================== */
-- Name starts with S
SELECT * FROM employee WHERE name LIKE 'S%';

-- Name ends with L
SELECT * FROM employee WHERE name LIKE '%L';

-- Name contains A
SELECT * FROM employee WHERE name LIKE '%A%';

-- Second letter is I
SELECT * FROM employee WHERE name LIKE '_I%';

/* ===============================
   COMPLEX CONDITION
   =============================== */
SELECT *
FROM employee
WHERE name LIKE 'S%L'
AND age < 25;

/* ===============================
   DISTINCT
   =============================== */
SELECT DISTINCT address FROM employee;
SELECT DISTINCT j_date FROM employee;

/* ===============================
   DELETE WITH FOREIGN KEY EFFECT
   =============================== */
DELETE FROM dept WHERE dno = 2;

SELECT * FROM employee;
