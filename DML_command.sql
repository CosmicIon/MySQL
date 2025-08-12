#Lab 04
#use of DML command

use dbms;

drop table employee;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

desc employee;

select * from employee;

-- 1.	Write a SQL query to insert the following employee into the Employee table:
--    - EmpID: 101
--    - Name: 'Rahul Sharma'
--    - Age: 29
--    - Department: 'HR'
--    - Salary: 45000
insert into employee (empid, name, age, Department, salary) 
values (101, 'Rahul Sharma', 29, 'HR', 45000);


-- 2.	Insert three new employees into the Employee table using a single query. 
insert into employee (empid, name, age, Department, salary) 
values
	(102, 'Harsh Nivedan', 20, 'IT', 145000),
	(103, 'Chandan Raj', 23, 'Account', 25000),
	(104, 'Harshit Suyal', 21, 'Support', 85000);
    
    
-- 3.	Write a query to insert data only into EmpID and Name columns. What happens to the other columns?
insert into employee (empid, name) 
values (105, 'Aditya');
#remaining columns remain empty.


-- 4.	Write a SQL command to update the salary of the employee with EmpID = 101 to 50000.
update employee set salary = 50000 where empid = 101;


-- 5.	Update the Department to 'Finance' for all employees currently in the 'Accounts' department.
update employee set department = 'finance' where department = 'Account';


-- 6.	Increase the salary of all employees in the 'IT' department by 10%. Write the SQL command for it.
update employee set salary = salary+salary/10 where department = 'IT';


-- 7.	Change the name of the employee with EmpID 103 from 'Anjali' to 'Anjali Verma'.
update employee set name = 'Anjali Verma' where empid = 103;


-- 8.	Write a SQL command to delete the record of the employee whose EmpID is 105.
delete from employee where empid = 105;


-- 9.	Delete all records of employees whose salary is less than 30000.
delete from employee where salary < 30000;


-- 10.	Write a query to remove all employees from the 'Support' department.
delete from employee where department = 'Support';


-- 11.	Suppose an employee named 'Ravi Kumar' has joined the 'Sales' department with a salary of 40,000. Insert this record into the table and then increase his salary by 20%.
insert into employee(empid, name, department, salary)
values(106, 'Ravi Kumar', 'Sales', 40000);
update employee set salary = salary + salary/5 where empid = 106;


-- 12.	A company wants to remove all employees aged above 60. Write a query to achieve this.
delete from employee where age > 60;


-- 13.	Update the names of all employees by appending '(Temp)' for those in the 'Temporary' department.
update employee set name = concat(name, '(Temp)') where department = 'Temporary';


-- 14.	Delete all records from the Employee table. What command is used and what is its effect on the table structure?
delete from employee;