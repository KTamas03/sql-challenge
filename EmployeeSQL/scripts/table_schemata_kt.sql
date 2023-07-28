-- STEP 1. CREATE TABLES

-- lists all employees and their details (300,024 rows)
CREATE TABLE "employees" (
    -- unique employee numbers
    "emp_no" int   NOT NULL,
    -- employee job title id
    "emp_title_id" varchar(5)   NOT NULL,
    -- employee birth date dd/mm/yyyy
    "birth_date" date   NOT NULL,
    -- employee irst name
    "first_name" varchar(50)   NOT NULL,
    -- employee last name
    "last_name" varchar(50)   NOT NULL,
    -- employee sex
    "sex" varchar(1)   NOT NULL,
    -- employee hire date dd/mm/yyyy
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

-- lists all employees and their salaries (300,024 rows)
CREATE TABLE "salaries" (
    -- unique employee numbers
    "emp_no" int   NOT NULL,
    -- employee salaries
    "salary" money   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

-- lists the employees that are managers, managers can work in more than one department (25 rows)
CREATE TABLE "dept_manager" (
    -- department number doesn't contain unique values
    "dept_no" varchar(4)   NOT NULL,
    -- employee number contains unique values
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

-- lists all the employees and the departments they work in, employees can work in more than one department (331,603 rows)
CREATE TABLE "dept_emp" (
    -- employee number doesn't contain unique values
    "emp_no" int   NOT NULL,
    -- department number doesn't contain unique values
    "dept_no" varchar(4)   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

-- list of unique role titles (7 rows)
CREATE TABLE "titles" (
    -- unique title ids
    "title_id" varchar(5)   NOT NULL,
    -- unique job title names
    "title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     ),
    CONSTRAINT "uc_titles_title" UNIQUE (
        "title"
    )
);

-- list of unique departments (9 rows)
CREATE TABLE "departments" (
    -- unique department numbers
    "dept_no" varchar(4)   NOT NULL,
    -- unique department names
    "dept_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     ),
    CONSTRAINT "uc_departments_dept_name" UNIQUE (
        "dept_name"
    )
);

-- STEP 2. force data style to change to american date format
-- Note. birth_date and hire_date are in american format in the employees.csv file
-- AskBCS Learning Assistant - 24hr assistant with date format issue, added code:
ALTER database sql_challenge_db SET datestyle = "ISO, MDY";

-- STEP 3. import csv files manually 
-- ie. right click on table 'Import/Export Data', select csv file from folder location

-- STEP 4. Alter tables to add foreign key constraints 
-- to ensure that data relationships between tables are consistent and valid
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");


