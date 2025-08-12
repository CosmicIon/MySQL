#Lab 03
#use of DDL command with column level constraints

use dbms;

create table car(
	reg_no int primary key,
    color varchar(50) not null,
    brand varchar(50) not null,
    model_no int unique,
    no_of_passengers int check (no_of_passengers between 2 and 8),
    is_four_wheel_drive bit(1) default 0 not null,
    engine_cc int not null
);

#to show the schema of the relation.
desc car;
