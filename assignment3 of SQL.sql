create schema assignment3;
use assignment3;

-- Q.1 create a table named FriendNew with the following fields and types
create table friendnew2(
id numeric(10) primary key,
fname varchar(24),
address varchar(30),
age numeric(10),
giftvalue numeric(10,2));


-- Q.2 insert all the details in the table 
insert into friendnew2 values(01,'Ram','Dwarka Sector 10',41,200);
insert into friendnew2 values(02,'Sita','Janakpuri Block C',26,250.80);
insert into friendnew2 values(03,'Rajesh','Dwarka Sector 15',23,200);
insert into friendnew2 values(04,'Ajit','Noida Sector 11',35,150.50);
insert into friendnew2 values(05,'Rita','Noida Sector 11',40,200);
select * from friendnew2;

-- Q.3 write a sql query to display all the records whose name starts with R.
select * from friendnew2 where fname like 'R%';

-- Q.4 insert a complete record into the friend table with these values for the respective fields: '123','Anil','Dwarka Sector 11',23,29.99
insert into friendnew2 values(123,'Anil','Dwarka Sector 11',23,29.99);
select * from friendnew2;

-- Q.5 write an sql query to change the age of Sita to 28.
update friendnew2 set age='28' where fname='Sita';

-- Q.6 write an sql query to delete the record with idno 123
delete from friendnew2 where idno=123;
-- Q.7 update the gift value to 49.99 for all people in the friendnew table whose age is equal to or greater than 31 years
UPDATE friendnew2 SET giftvalue = '49.99' WHERE (age > 31 OR age = 31);

-- Q.8 add a field named City to the Friendnew table with datatype as varchar and size equal to 15.
Alter table friendnew2 add (
City varchar(15));

-- Q.9 add the naame of the city for all the records of the table
update friendnew2 set City = 'UP';
-- Q.10 display fname and age of all the records in ascending order
select * from friendnew2 order by fname asc;  
select * from friendnew2 order by age asc;  

-- Q.11 write a sql query to get the cumulative giftvalue foe all records
select sum(giftvalue) 'cumulative giftvalue' from friendnew2;

-- Q.12 write a query to average of the age of all the friends under the heading 'Average Age'
select avg(age) 'Average Age' from friendnew2;
-- Q.13 write a query to display the name and age of the youngest member
select fname,age from friendnew2 where age= ( select min(age) from friendnew2);
-- Q.14 count the no of candidates whose age is more than 30 years
select count(fname) from friendnew2 where age> 30;

-- Q.15 to display the name and giftvalue of the record with highest giftvalue
select fname,giftvalue from friendnew2 where giftvalue=(select max(giftvalue) from friendnew2);
-- Q.16 write a query to delete all the records
drop table friendnew2;

