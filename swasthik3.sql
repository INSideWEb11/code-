CREATE DATABASE ORG;
USE ORG;

---table creation  worker--
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(255)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '05-08-20 06:29:00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '05-08-20 06:29:00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '05-08-20 06:29:00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '05-08-20 06:29:00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '05-08-20 06:29:00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '05-08-20 06:29:00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '05-08-20 06:29:00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '05-08-20 06:29:00', 'Admin');

--. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

		select FIRST_NAME as WORKER_NAME from worker

-- Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.

select FIRST_NAME as uppercase from worker

--Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

select distinct DEPARTMENT from Worker

--Write an SQL query to print the first three characters of  FIRST_NAME from Worker table

select SUBSTRING (FIRST_NAME,1,3) from Worker

--Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

select distinct  len (DEPARTMENT)as   Full_LENGTH from Worker

--Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate 
select FIRST_NAME+ LAST_NAME as   Full_Name from Worker

--. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
SELECT * FROM Worker WHERE FIRST_NAME IN ('Vipul','Satish');

--Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

SELECT * FROM WORKER WHERE DEPARTMENT IN ('Admin')

--Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.

SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%a';

--Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%a%';

