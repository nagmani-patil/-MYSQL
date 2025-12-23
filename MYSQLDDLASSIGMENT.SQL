/* ===============================
   1. SHOW ALL DATABASES
   =============================== */
SHOW DATABASES;

/* ===============================
   2. CREATE COUNTRIES TABLE
   =============================== */
DROP TABLE IF EXISTS countries;

CREATE TABLE countries (
    country_id   VARCHAR(5),
    country_name VARCHAR(40),
    region_id    INT,
    CONSTRAINT pk_country PRIMARY KEY (country_id)
);

DESCRIBE countries;

/* ===============================
   3. CREATE JOBS TABLE (CHECK + PK)
   =============================== */
DROP TABLE IF EXISTS jobs;

CREATE TABLE jobs (
    job_id     VARCHAR(10) PRIMARY KEY,
    job_title  VARCHAR(35) NOT NULL,
    min_salary INT,
    max_salary INT,
    CHECK (max_salary <= 25000)
);

DESCRIBE jobs;

/* ===============================
   4. CREATE JOB_HISTORY TABLE
   =============================== */
DROP TABLE IF EXISTS job_history;

CREATE TABLE job_history (
    employee_id   INT,
    start_date    DATE,
    end_date      DATE,
    job_id        VARCHAR(10),
    department_id INT
);

DESCRIBE job_history;

/* ===============================
   5. CREATE JOBS WITH DEFAULT VALUES
   =============================== */
DROP TABLE IF EXISTS jobs_default;

CREATE TABLE jobs_default (
    job_id     VARCHAR(10) PRIMARY KEY,
    job_title  VARCHAR(35) DEFAULT '',
    min_salary INT DEFAULT 8000,
    max_salary INT DEFAULT NULL
);

DESCRIBE jobs_default;

/* ===============================
   6. CREATE DEPARTMENTS TABLE
   =============================== */
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id   INT,
    department_name VARCHAR(30),
    manager_id      INT,
    location_id     INT,
    CONSTRAINT pk_dept PRIMARY KEY (department_id),
    CONSTRAINT uk_dept_mgr UNIQUE (department_id, manager_id)
);

DESCRIBE departments;

/* ===============================
   7. CREATE EMPLOYEES TABLE
   =============================== */
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id   INT PRIMARY KEY,
    first_name    VARCHAR(20),
    last_name     VARCHAR(25),
    email         VARCHAR(50),
    phone_number  VARCHAR(20),
    hire_date     DATE,
    job_id        VARCHAR(10),
    salary        DECIMAL(8,2),
    commission    DECIMAL(4,2),
    manager_id    INT,
    department_id INT,
    CONSTRAINT fk_dept_mgr
        FOREIGN KEY (department_id, manager_id)
        REFERENCES departments (department_id, manager_id)
);

DESCRIBE employees;
