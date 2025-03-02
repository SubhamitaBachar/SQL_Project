create schema assignment1;
use assignment1;
-- ASSIGNMENT-1
-- Q.1 CREATE TABLE FRIEND AND ENTER THE FIELDS AND TYPES GIVEN

create table Friend(
idno NUMERIC(10),
fname VARCHAR(24),
address VARCHAR(30),
age NUMERIC(10),
giftvalue NUMERIC(10,2));

select * from friend
-- Q.2 insert the following values on the table

insert into friend values(01,'Ram','Dwarka Sector 10',41,200);
insert into friend values(02,'Sita','Janakpuri Block C',26,250);
insert into friend values(03,'Rajesh','Dwarka Sector 15',23,200);
insert into friend values(04,'Ajit','Noida Sector 11',35,150);
insert into friend values(05,'Rita','Noida Sector 11',40,200);
-- Q.3 write an sql query to display all the records
select * from friend

-- Q.4 write an sql query to display all the records where age is > 40.

select * from friend where age > '40';

-- Q.5 write an sql query to display fname,age from the table

select fname,age from friend;
-- Q.6 write an sql query to display fname,age,giftvalue where age>35 from the table.
select fname,age,giftvalue from friend where age>'35';

-- Q.7 write sql query to display all records where gift value > 200 and age > 20.

select * from friend where giftvalue>'200' and age>'20' ;

-- Q.8 write sql query to display all records where gift value > 200 or age > 20.

select * from friend where giftvalue>'200' or age>'20' ;