#Lab 05
/*TCL command: saving (commit) and undoing (rollback)*/

use dbms;

create table student (
	studentid int,
    name varchar(100),
    age int,
    course varchar(100)
);

desc student;

insert into student
values(101, 'Harsh', 20, 'Btech');

select * from student;

start transaction;
update student 
set age = 21
where studentid = 101;
rollback;

start transaction;
update student 
set age = 22
where studentid = 101;
commit;

drop table employee;
CREATE TABLE Employee (
    EmpID INT,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    Designation VARCHAR(30),
    HireDate DATE
);

-- 1.	Insert a new record into the Employee table. Then issue a COMMIT command. Explain what happens if you try to rollback after the commit.
start transaction;
insert into employee
values(101, 'Harsh', 'IT', 145000, 'CEO', '2025-02-11');
commit;
rollback;
select * from employee;
#if we try to rollback after commit then nothing will happen, it automatically rollbacked to the last commited change.


-- 2.	Update the salary of employee with EmpID = 102 to 60000. Rollback the transaction before commit. Verify the change.
insert into employee
values(102, 'Harshit', 'IT', 14000, 'Manager', '2025-03-11');
start transaction;
update employee set salary = 60000
where empid = 102;
select * from employee;
rollback;


-- 3.	Delete all employees working in the HR department. Before commit, issue a rollback command. What will be the final state of the table?
start transaction;
delete from employee
where department = 'HR';
rollback;
select * from employee;
#the table will be rollbacked to the last commited change.


-- 4.	Insert two new employees into the Employee table. Commit after inserting the first record, then rollback after inserting the second record. What records remain in the table?
start transaction;
insert into employee
values(103, 'Harshita', 'Finance', 15000, 'HR', '2025-04-11');
commit;
start transaction;
insert into employee
values(104, 'Harish', 'Finance', 24000, 'Support', '2025-04-11');
rollback;
select * from employee;
#the record that we commited will remain in the table.


-- 5.	Update the department of all employees from Sales to Marketing. Rollback the transaction before commit. What will happen?
start transaction;
update employee
set department = 'Marketing'
where department = 'Sales';
rollback;
select * from employee;
#all the changes will be undo.


-- 6.	Delete employee with EmpID = 105. Commit the transaction. Then try to rollback. Will the deleted record reappear? Why or why not?
insert into employee
values(105, 'Harish', 'Finance', 24000, 'Support', '2025-04-11');
start transaction;
delete from employee
where empid = 105;
commit;
rollback;
select * from employee;
#the deleted record will not reappear. because after commit command the permanent database will be updated.


-- 7.	Perform a salary increment of 10% for all employees. Do not commit immediately. Rollback the transaction and verify the result.
start transaction;
update employee
set salary = salary + salary/10;
select * from employee;
rollback;
commit;


-- 8.	Insert an employee record into the Employee table. Without committing, close the session. Will the record be saved in the database? Justify.
start transaction;
insert into employee
values(105, 'Harish', 'Finance', 24000, 'Support', '2025-04-11');
# No, the record did not saved in database if we not commit and close the session.


-- 9.	Update the designation of employee with EmpID = 110. Commit the transaction. Then update the same record again and rollback. Which update will be retained?
insert into employee
values(110, 'Harish', 'Finance', 24000, 'Support', '2025-04-11');
start transaction;
update employee
set designation = 'HR'
where empid = 110;
commit;
select * from employee;

start transaction;
update employee
set designation = 'Assistant'
where empid = 110;
select * from employee;
rollback;
#the update with commit will retained.


-- 10.	Explain with an example how COMMIT makes the changes permanent and how ROLLBACK can be used to undo uncommitted changes.
start transaction;
update employee
set designation = 'HR'
where empid = 110;
commit;
select * from employee;
#commit command is used to push the changes to the permanent table.

start transaction;
update employee
set designation = 'Assistant'
where empid = 110;
select * from employee;
rollback;
#transaction command is used to make changes in the main memory. if we rollback then it does not push the changes to the permanent storage. the changes will be pushed only when we commit our changes.
