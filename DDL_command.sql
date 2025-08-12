#Lab 02
#use of DDL command without constraints


create table dbms.employee (
	employee_id int primary key,
    employee_name varchar(50),
    employee_designation varchar(50),
    employee_salary decimal(10, 2),
    contact varchar(10),
    manager varchar(50)
);

#to show the schema of the relation.
desc dbms.employee;


#DML command to add attribute
alter table dbms.employee
add employee_email varchar(100);