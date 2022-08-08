create table batch2(
id int primary key not null,
ename varchar(255) not null,
mobile int not null, salary int  not null,
designation varchar(25) not null
)

select * from batch2

--inserting into table --
insert into batch2 values(1,'tommy',7855644 ,5500,'devloper')


insert into batch2 values(2,'tommy',7855644 ,6500,'tester')

insert into batch2 values(3,'tommy',7855644 ,4500,'ui')

insert into batch2 values(4,'tommy',7855644 ,4500,'ux')

insert into batch2 values(5,'tommy',7855644 ,5500,'devloper')

insert into batch2 values(6,'tommy',7855644 ,5500,'backend')


select avg(Salary) as 'Average Salary' from batch2
select min(Salary) as 'Minimum Salary' from batch2
select max(Salary) as 'Maximum Salary' from batch2
select count(Salary) as 'Count Salary' from batch2
 select sum(Salary) as 'Sum Salary' from batch2

 select avg(Salary) as 'Average Salary',designation from batch2 group by Designation

 select avg(Salary) as 'Average Salary',designation from batch1 group by Designation having designation='Developer'


select * from batch1 order by salary
 
select * from batch1 order by salary desc

select * from batch1 order by salary desc,id desc

create table employee(id int ,name varchar(25))

create synonym e1 for employee

select * from employee

select * from e1


----joins ----


create table customers(cid int primary key not null, cname varchar(25) not null , country varchar(25) not null)

create synonym c for customers

insert into c values (1,'rohit','india')

insert into c values (2,'ram','usa')

insert into c values (3,'sita','uk')

insert into c values (4,'praveen','india')

insert into c values (5,'root','china')

-- create table for orders--

create table customer_orders(cid int primary key not null,order_id int not null,oder_date date)

create synonym co for customer_orders

insert into co values (1,1005,GETDATE())

insert into co values (2,1085,GETDATE())

insert into co values (3,1905,GETDATE())

insert into co values (4,2005,GETDATE())

insert into co values (5,1605,GETDATE())

select * from co

---query --

SELECT customer_orders.cid, Customers.cname, customer_orders.oder_date
FROM customer_orders
INNER JOIN Customers ON customer_orders.cid=Customers.cid;

SELECT customer_orders.cid, Customers.cname,customer_orders.oder_date,customer_orders.order_id
FROM customer_orders
full JOIN Customers ON customer_orders.cid=Customers.cid;

SELECT customer_orders.cid, Customers.cname,customer_orders.oder_date,customer_orders.order_id
FROM customer_orders
right JOIN Customers ON customer_orders.cid=Customers.cid;


SELECT customer_orders.cid, Customers.cname,customer_orders.oder_date,customer_orders.order_id, Customers.country
FROM customer_orders
left JOIN Customers ON customer_orders.cid=Customers.cid;

create table paper
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
insert into paper values('Sam')

insert into paper values('vam')

insert into paper values('pot')

select * from paper

create sequence empid as INT start with 1 increment by 5

create table sample1
(
id int primary key ,
name varchar(20)
)

insert into sample1 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample1 values(NEXT VALUE FOR EMPID,'John')

--ALTER SEQUENCE
alter sequence empid restart with 1 increment by 1
create table sample2
(
id int primary key ,
name varchar(20)
)
insert into sample2 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample2
insert into sample2 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample2 values(NEXT VALUE FOR EMPID,'John')

select NEXT VALUE FOR EMPID 

--- view ---
create  view abc
as
SELECT customer_orders.cid, Customers.cname,customer_orders.oder_date,customer_orders.order_id, Customers.country
FROM customer_orders
left JOIN Customers ON customer_orders.cid=Customers.cid;

select * from abc
