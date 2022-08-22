﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

CREATE TABLE "departments" (
    "dept_no" varchar(255) NOT NULL,
    "dept_name" varchar(255) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "titles" (
    "title_id" varchar(255) NOT NULL,
    "title" varchar(255) NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int NOT NULL,
    "emp_title_id" varchar(255) NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" varchar(255) NOT NULL,
    "last_name" varchar(255) NOT NULL,
    "sex" varchar(255) NOT NULL,
    "hire_date" date NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int NOT NULL,
    "salary" int NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int NOT NULL,
    "dept_no" varchar(255) NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(255) NOT NULL,
    "emp_no" int NOT NULL
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");