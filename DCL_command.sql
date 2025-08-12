#LAB 01
#comment DCL command : revoke and grant 


# first we need to create the NEW USER using this syntax
CREATE USER 'harsh'@'localhost' IDENTIFIED BY 'password';
create user harsh identified by 'password';


#using this command we select our database
use dbms;


#this is the syntax to grant and remove the prevelige to user -> 'harsh'@'localhost'
grant select on car to 'harsh'@'localhost';
revoke select on car from 'harsh'@'localhost';


#this is the syntax to grant and remove the prevelige to user -> harsh
grant select on car to harsh;
revoke select on car from harsh;