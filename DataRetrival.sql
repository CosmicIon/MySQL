#Lab 06
/* Data retrieval (DR) command: Fetching data from database using SELECT , FROM and WHERE command (Projection and Selection) */

use dbms;
drop table students;
create table students (
	studentid int primary key,
    studentname varchar(50),
    age int,
    course varchar(20),
    department varchar(20),
    marks int,
    city varchar(20)
);

desc students;

insert into students
values
	(1, 'harsh', 20, 'btech', 'cse', 99, 'ranchi'),
    (2, 'harshit', 19, 'btech', 'ese', 89, 'pune'),
    (3, 'harshita', 22, 'bca','ai', 79, 'mumbai'),
    (4, 'harish', 21, 'mca','ds', 74, 'dehradun'),
    (5, 'chandan', 24, 'bba','management', 89, 'delhi'),
    (6, 'adarsh', 18, 'btech','cse', 90, 'noida'),
    (7, 'aditya', 25,'bba', 'management', 67, 'kolkata'),
    (8, 'anirudh', 22, 'btech','it', 94, 'chennai');

#1. Display all the records from the students table
select * from students;

#2 Retrieve only the studentname and course columns from the students table.
select studentname, course from students;

#3 Fetch the details of students whose age is greater than 20.
select * from students where age > 20;

#4 List the names and marks of students who have schored more than 80 marks.
select studentname, marks from students where marks > 80;

#5 display the studentid and studentname of all students enrolled in the btech course
select studentid, studentname from students where course = 'btech';

#6 Retrieve all the details of students from the cse department.
select * from students where department = 'cse';

#7 Show the names of students whose city is delhi.
select studentname from students where city = 'delhi';

#8 List all students whose marks are between 60 and 75.
select * from students where marks > 60 && marks < 75;
select * from students where marks between 60 and 75;

#9 Display the studentname and age of students who are less than 18 year old.
select studentname, age from students where age < 18;	




drop table employee;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Department VARCHAR(30) NOT NULL,
    Designation VARCHAR(30) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    DOJ DATE NOT NULL
);
insert into employee
values
	(1, 'harsh', 'it', 'ceo', 145000, '2025-02-11'),
    (2, 'harshit', 'finance', 'hr', 45000, '2025-03-11'),
    (3, 'harshita', 'support', 'manager', 55000, '2025-04-11'),
    (4, 'harish', 'sales', 'media', 65000, '2025-05-11'),
    (5, 'chandan', 'it', 'manager', 75000, '2025-06-11'),
    (6, 'aditya', 'finance', 'hr', 85000, '2025-06-11'),
    (7, 'aniruch', 'marketing', 'manager', 95000, '2025-07-11');

-- 1.	Display all the records from the Employee table.
select * from employee;

-- 2.	Retrieve only the EmpID, EmpName, and Salary of all employees.
select empid, empname, salary from employee;

-- 3.	Display the details of employees who work in the IT department.
select * from employee where department = 'it';

-- 4.	Retrieve the names and salaries of employees whose salary is greater than 50000.
select empname, salary from employee where salary > 50000;

-- 5.	Display all employees whose designation is Manager.
select * from employee where designation = 'manager';

-- 6.	Fetch the names of employees who joined after 01-JAN-2020.
select empname from employee where doj > '2020-01-01';

-- 7.	Retrieve the details of employees from the HR department earning less than 40000.
select * from employee where department = 'hr' && salary < 40000;

-- 8.	Display the names and departments of employees with a salary between 30000 and 60000.
select empname, department from employee where salary between 30000 and 60000;

-- 9.	Display all employees not working in the Finance department.
select * from employee where department != 'finance';

-- 10.	Display only EmpName and Department of all employees.
select empname, department from employee;

-- 11.	Show EmpID, EmpName, and Salary for all employees.
select empid, empname, salary from employee;

-- 12.	List the EmpName and Designation of employees who joined after 2022-01-01.
select empname, designation from employee where doj > '2022-01-01';

-- 13.	Display names of all employees in uppercase format.
select upper(empname) from employee; 

-- 14.	Show EmpName and Salary of employees with salaries between 40,000 and 60,000.
select empname, salary from employee where salary between 40000 and 60000;

-- 15.	Display all employees who joined before 2021-06-01.
select * from employee where doj < '2021-06-01';

-- 16.	Show details of employees whose Designation is either Manager or Team Lead.
select * from employee where designation = 'manager' || designation = 'team lead';

-- 17.	Find employees whose salary is greater than 50,000.
select * from employee where salary > 50000;