﻿-- Drop table Departments;
-- Drop table Employees;
-- Drop table dept_emp;
-- Drop table salaries;
-- Drop table titles;

CREATE TABLE  Departments  (
     dept_no  VARCHAR   NOT NULL,
     dept_name  VARCHAR   NOT NULL,
    CONSTRAINT  pk_Departments  PRIMARY KEY (
         dept_no 
     )
);

Select * From Departments;

CREATE TABLE  Dept_Emp  (
     emp_no  INTEGER   NOT NULL,
     dept_no  VARCHAR   NOT NULL,
    CONSTRAINT  pk_Dept_Emp  PRIMARY KEY (
         emp_no , dept_no 
     )
);

Select * from Dept_Emp;

CREATE TABLE  Employees  (
     emp_no  INTEGER   NOT NULL,
     emp_title_id  VARCHAR   NOT NULL,
     birth_date  VARCHAR   NOT NULL,
     first_name  VARCHAR   NOT NULL,
     last_name  VARCHAR   NOT NULL,
     sex  VARCHAR   NOT NULL,
     hire_date  VARCHAR   NOT NULL,
    CONSTRAINT  pk_Employees  PRIMARY KEY (
         emp_no 
     )
);

select * from Employees;

CREATE TABLE  Titles  (
     title_id  VARCHAR   NOT NULL,
     title  VARCHAR   NOT NULL,
    CONSTRAINT  pk_Titles  PRIMARY KEY (
         title_id 
     )
);

select * from Titles;

CREATE TABLE  Dept_manager  (
     dept_no  VARCHAR   NOT NULL,
     emp_no  INTEGER   NOT NULL,
    CONSTRAINT  pk_Dept_manager  PRIMARY KEY (
         dept_no , emp_no 
     )
);

select * from Dept_manager;

CREATE TABLE  Salaries  (
     emp_no  INTEGER   NOT NULL,
     salary  INTEGER   NOT NULL,
    CONSTRAINT  pk_Salaries  PRIMARY KEY (
         emp_no 
     )
);

select * from Salaries;


-- ALTER TABLE  Dept_Emp  ADD CONSTRAINT  fk_Dept_Emp_emp_no  FOREIGN KEY( emp_no )
-- REFERENCES  Employees  ( emp_no );

-- ALTER TABLE  Dept_Emp  ADD CONSTRAINT  fk_Dept_Emp_dept_no  FOREIGN KEY( dept_no )
-- REFERENCES  Departments  ( dept_no );

-- ALTER TABLE  Employees  ADD CONSTRAINT  fk_Employees_emp_title_id  FOREIGN KEY( emp_title_id )
-- REFERENCES  Titles  ( title_id );

-- ALTER TABLE  Dept_manager  ADD CONSTRAINT  fk_Dept_manager_dept_no  FOREIGN KEY( dept_no )
-- REFERENCES  Departments  ( dept_no );

-- ALTER TABLE  Dept_manager  ADD CONSTRAINT  fk_Dept_manager_emp_no  FOREIGN KEY( emp_no )
-- REFERENCES  Employees  ( emp_no );

-- ALTER TABLE  Salaries  ADD CONSTRAINT  fk_Salaries_emp_no  FOREIGN KEY( emp_no )
-- REFERENCES  Employees  ( emp_no );

