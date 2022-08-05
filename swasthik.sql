create database pen
create table batch1(
id int,
ename varchar(255),
mobile int,
)
select *from batch1
insert into batch1 values(1,'swasthik',948999)
insert into batch1 values(2,'peter',44443)
insert into batch1 values(3,'meter',948445999)
insert into batch1 values(4,'driller',77667)
insert into batch1 values(5,'driver',555644)

alter table batch1 add designation varchar(10)


update batch1 set designation = 'devloper'where id = 1
update batch1 set designation = 'it'where id = 2
update batch1 set designation = 'ux'where id = 4
update batch1 set designation = 'tester'where id = 4





alter table batch1 add mobile varchar(10)

create table demo(id int,name varchar(255),designation varchar(255))
select * from demo
alter table demo add address varchar(255)


select * from demo
-- alter table demo set role where designation
 alter database demo Modify Name=demo2

 insert into demo values(1,'swasthik','software','banglore')
 insert into demo values(1,'swasthik','ux','ckm')
 insert into demo values(1,'swasthik','tester','maglore')
 insert into demo values(1,'swasthik','ui','china')
 insert into demo values(1,'swasthik','manager','new york')


 select id,ename from batch1

 alter table batch1 add  salary int

update batch1 set Salary=45000 where id='4'
update batch1 set Salary=60000 where id='3'
update batch1 set Salary=40000 where id='5'
update batch1 set Salary=3000 where id='2'
update batch1 set Salary=4000 where id='1'

select salary from batch1

delete from batch1 where salary = 4000

create table demo2(name varchar(10))

create schema sqlbatch2

create table demo
(
id int
)
create table sqlbatch.demo2
(
id int
)

drop table demo2

select id as eid from batch1

select * from batch1

select * from batch1

drop schema sqlbatch2


select ID as empID,eName as 'employee name' from batch1

select * from batch1 where salary>=40000

update batch1 set salary = 9000 where salary>=60000


select * from batch1 where salary between 3000 and 6000

select * from batch1 where id in (1,3,5)


select * from batch1 WHERE Designation in ('it','tester')

select * from batch1

-----like -----
select * from batch1 where ename like'_%'
--printing every things
select * from batch1 where ename like'd%'
--printing 4 5 
select * from batch1 where ename like 'p_%'
--printing peter
select * from batch1 where ename not like '[a-f]%'

--otther than peter 
select * from batch1 where ename like '[a-e]%'

select * from batch1 where EName not like '[e-z]%'

-- printing driller ,driver

select * from demo

select designation from demo

-- unique 
select name from demo


--DISTINCT - avoid duplicate records


update batch1 set designation = 'it' where id =3


Select designation from batch1

select DISTINCT designation from batch1