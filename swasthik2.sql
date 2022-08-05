create database pencile

create table emp(id int primary key  , name varchar(255) not null, phno int , deptno int not null )

select * from emp
--inserting into emp
insert into emp values(1,'veer',948000323,001)
insert into emp values(2,'dattveer',948000323,002)
insert into emp values(3,'rock',948000323,005)
insert into emp values(4,'tim',948000323,004)
insert into emp values(5,'jimme',88000923,003)

--update the emp tables--

alter table emp add designation varchar(255)

-- adding values into designtion 


update emp set designation = 'it' where id =1
update emp set designation = 'ux' where id =2
update emp set designation = 'backend' where id =3
update emp set designation = 'fontend' where id =4

-- deptno-- 
update emp set designation = 'manager' where deptno =3

create table emp2(id int  , name varchar(255) not null , deptno int not null,salary int )


drop table emp2

-- updateing the table to not null after creation 

alter table emp2
alter column id smallint not null

-- adding constraint key --

alter table emp2 add constraint pk_idname primary key(id,name)

-- table creation --
create table Vote
(
id int Primary key,
Name varchar(25) UNIQUE NOT NULL,
dob datetime NOT NULL CHECK(dob <= CURRENT_TIMESTAMP),
age int NOT NULL CHECK(age >= 18),
designation varchar(25) DEFAULT 'employeed'
)

insert into vote values (1,'swasthik','2000-01-16 06:12:12',22,'it')
insert into vote values (2,'swaroop','2002-07-16 09:12:12',20,'ui')
insert into vote values (3,'suresh','1956-11-16 08:12:12',65,'ux')
insert into vote values (4,'sudha','1970-12-16 08:12:12',45,'software')
insert into vote values (5,'peter','1980-07-16 04:12:12',50,'hardware')
insert into vote values (6,'marveek','2005-09-16 06:12:12',17,'')

-- displaying table--

select * from Vote

//

create table dept
(
did int PRIMARY KEY,
dname varchar(20) NOT NULL
)

insert into dept values(1,'Admin')
insert into dept values(2,'Developer')
insert into dept values(3,'Designer')
insert into dept values(4,'Tester')

select * from dept
delete from dept where did=1

update dept set did=100 where did=1

----carete table emp2 to refernce to emp and fori key to d id---


create table emp2(id int primary key  , name varchar(255) not null, phno int , deptno int not null FOREIGN KEY REFERENCES dept(did) )

select * from emp2
--inserting into emp with dept no
insert into emp2 values(1,'veer',948000323,1)
insert into emp2 values(2,'dattveer',948000323,2)
insert into emp2 values(3,'rock',948000323,3)
insert into emp2 values(4,'tim',948000323,004)
insert into emp2 values(5,'jimme',88000923,003)
insert into emp2 values(1,'merk',93933932,4)


delete from emp2 where id=2

-- creating parent table
create table parent(id int primary key not null ,pname varchar(20))

-- insert into parent table 
insert into parent values(1,'pater')
insert into parent values(2,'jack')
insert into parent values(3,'alan')
insert into parent values(4,'tomy')
insert into parent values(5,'rooty')

-- create child table--

create table child( cid int primary key not null, cname varchar(25) not null, 
pno int foreign key references
parent(id) on delete cascade on update cascade)

insert into child values(100,'jhon',1)
insert into child values(101,'jin',2)
insert into child values(103,'alter',3)
insert into child values(104,'pistol',4)

--update--
update parent set id=10 where id=2

--display --
select * from parent
select * from child

--deletion
delete from parent where id=10

--alter
--alter table child drop constraint FK__child__pno__6D0D32F4

alter table child add constraint FK__child__pno foreign key(pno) references parent(pid) on delete set null on update set null

-- crete new child table
create table child2
(
cid int primary key,
cname varchar(20) not null,
pno int default 1 foreign key references parent(id) on delete set default on update set default
)

select * from child2
-- insert into table 

insert into child2 values(300,'tommy',1)
insert into child2 values(301,'kitty',3)
insert into child2 values(302,'rocky',1)
insert into child2 values(303,'raju',4)


--- parent update --
update parent set id=20 where id=5
select * from parent
select * from child2
delete from parent where id=3

select * from parent


-- in this query i got confused on  this two section
alter table child drop constraint FK__child__pno__6D0D32F4

alter table child add constraint FK__child__pno foreign key(pno) references parent(pid) on delete set null on update set null
