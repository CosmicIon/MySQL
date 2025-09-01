#Lab 7.
/*Perform the following : Altering a Table, Dropping / Truncating / renaming Tables, backing up/ restoring a database.*/

use dbms;

drop table student;

create table student (
	studentid int primary key,
    studentname varchar(50),
    dob date,
    phone varchar(15),
    address varchar(100)
);

desc student;

insert into student
values
	(1, 'harsh', '2005-01-11', '123', 'ranchi'),
    (2, 'harshit', '2005-02-11', '456', 'nanital'),
    (3, 'harshita', '2005-03-11', '789', 'noida');
    
select * from student;

#1. add a new column email to student table.
alter table student add email varchar(50);
desc student;


#2. Modify the size of the studentname column to store up to 100 characters.
alter table student modify studentname varchar(100);
desc student;


#3. Change the datatype of the phone column to bigint.
alter table student modify phone bigint;
desc student;


#4. Drop the column address from the student table.
alter table student drop column address;
desc student;


#5. Rename the column DOB to DateOfBirth in the Student table.
alter table student rename column dob to DateOfBirth;
desc student;
#alter table student change dob DateOfBirth date;


#6. Rename the student table to Student_Detatils.
rename table student to student_details;
desc student_details;


#7. truncate all data from the student table without deleting the table structure.
truncate table student_details;
select * from student_details;


#8. drop the student tabld permanentlyfrom the database.
drop table student_details;
desc student_details;

drop table employee;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    DOJ DATE
);

desc employee;

INSERT INTO Employee (EmpID, EmpName, Department, Salary, DOJ) 
VALUES
	(101, 'Amit Sharma', 'HR', 45000.00, '2020-05-12'),
	(102, 'Priya Verma', 'Finance', 52000.50, '2019-11-23'),
	(103, 'Ravi Kumar', 'IT', 60000.00, '2021-07-15'),
	(104, 'Neha Singh', 'Marketing', 48000.75, '2020-01-18'),
	(105, 'Vikram Joshi', 'IT', 55000.00, '2022-03-05');

select * from employee;

-- 1.	Add a new column Email of type VARCHAR(50) to the Employee table.
alter table employee add email varchar(50);
desc employee;


-- 2.	Modify the Salary column to DECIMAL(10,2).
alter table employee modify salary decimal(10,2);
desc employee;


-- 3.	Rename the column EmpName to EmployeeName.
alter table employee rename column empname to employeename;
desc employee;


-- 4.	Drop the Email column.
alter table employee drop column email;
desc employee;


-- 5.	Drop the column Department from the Employee table.
alter table employee drop column department;
desc employee;


-- 6.	Write a query to remove all data from the Employee table without deleting the table itself.
truncate table employee;
select * from employee;


-- 7.	Write a query to delete the Employee table completely from the database.
drop table employee;
desc employee;


-- 8.	Write a query to rename the Employee table to Staff.
rename table employee to staff;
desc staff;


-- 9.	Change the department of Neha Singh from Marketing to Sales.
update staff set department = 'sales' where empname = 'Neha Singh';
select * from staff;


-- 10.	Delete all employees from the Marketing department.
delete from staff where department = 'marketing';
select * from staff;
	