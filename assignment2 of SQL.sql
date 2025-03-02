create schema assignment2;
use assignment2;

-- Q.1 create a table with the following details----
create table employee_info(
Empid NUMERIC(10),
Dept CHAR(5),
EMPName VARCHAR(15),
Address VARCHAR(30),
Salary NUMERIC(7));
SELECT * FROM employee_info;

-- Q.2 enter the folowing details in the table

insert into employee_info values(101,'RD01','Prince','Park Way',15000);
insert into employee_info values(102,'RD01','Harry','Pebble Street',12000);
insert into employee_info values(103,'RD02','Tom','Park Avenue',11000);
insert into employee_info values(104,'RD02','Susan','Model Town',10000);
insert into employee_info values(105,'ED01','Mark','Victor Cresent',10000);
insert into employee_info values(106,'AD01','Francis','Chelmsford Park',13000);
insert into employee_info values(107,'GR01','Robert','Downtown Cross',14000);
insert into employee_info values(108,'RD03','Philip','Park Avenue',15000);
insert into employee_info values(109,'RD03','Henry','Malibu Beach',14000);
insert into employee_info values(110,'AD01','Frank','St. Peters Lane',7000);

-- Q.3 write an sql query to display all records
SELECT * FROM employee_info;

-- Q.4 write an sql query to display all records where department is RD01.
select * from employee_info where Dept= 'RD01';

-- Q.5 write an sql query to display empname,dept,salary from the table
select Empname,Dept,Salary from employee_info;

-- Q.6 write an sql query to display empname,dept,salary from the table where salary is greater than 13000.
select Empname,Dept,Salary from employee_info where Salary > '13000';

-- Q.7 write an sql query to display the records of those employees who lives in Park Avenue.
select * from employee_info where Address='park Avenue';

-- Q.8 display name,id of those employees whose salary is 15000 and lives in park avenue
select EMPName,EMPID from employee_info where Address='park Avenue' and salary='15000';

-- Q.9 find names for all employees who work for the department RD01. 
select EMPname from employee_info where Dept='RD01';

-- Q.10 how many employees are working in the department starting from RD.
select * from employee_info where dept like 'RD%';

-- Q.11 what is the maximum and minimum of the salaries.
select max(salary),min(salary) from employee_info;

-- Q.12 name the employees and their deparment whose salaries are greater than 12000.
select EMPName,DEPT from employee_info where salary>'12000';

-- Q.13 list the employees in increasing order of their salaries
select * from employee_info order by salary asc;

-- Q.14 modify the table so that susan is assigned department AD01.
update employee_info set Dept='AD01' WHERE Empname='Susan';
select * from employee_info;

-- Q.15 Name the employee in department RD03 who lives in park avenue.
select EMPName from employee_info where Address='Park Avenue' and Dept='RD03';

-- Q.16 find the average salary.
select avg(Salary) from employee_info;

-- Q.17 count the number of employees.
select count(EMPName) from employee_info;

-- Q.18 find details of those employees whose salary is > the average salary for all employee.
select * from employee_info where Salary> '12100.00';