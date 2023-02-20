use master
CREATE DATABASE WEEK3;

use WEEK3

CREATE TABLE Employee1 
(
    EmpID int,
    Name nvarchar(255),
    Salary int,
	Gender nvarchar(255),
    City nvarchar(255),
    Age int,
	Primary Key(EmpID)
);

Select * from Employee1

Insert into Employee1
values(1,'SABA',60000,'Female','Lahore',25)

Insert into Employee1
values(2,'MUBEEN',1000000,'Female','Lahore',25)
UPDATE Employee1
SET Age= '22'
where EmpID=2 

Insert into Employee1
values(3,'IQRA',70000,'Female','Lahore',25)
UPDATE Employee1
SET Age= '19'
where EmpID=3 
 

Insert into Employee1
values(4,'NAILA',50000,'Female','Lahore',25) 
UPDATE Employee1
SET Age= '32'
where EmpID=4 
 

Insert into Employee1
values(5,'SHUMAILA',55000,'Female','Lahore',25)  
UPDATE Employee1
SET Age= '32'
where EmpID=4 
 

Insert into Employee1
values(6,'ALI',40000,'male','Lahore',22)

Insert into Employee1
values(7,'AHMAD',60000,'male','Lahore',23) 

Insert into Employee1
values(8,'IJAZ',45000,'male','Lahore',27) 

Insert into Employee1
values(9,'SAJAWAL',50000,'male','Lahore',24) 

Insert into Employee1
values(10,'ARHAM',55000,'male','Lahore',30)

Insert into Employee1
values(11,'SAIRA',30000,'Female','Lahore',20)
UPDATE Employee1
SET City= 'Islamabad'
where EmpID=11

Insert into Employee1
values(12,'MAIRA',30000,'Female','Islamabad',21) 
UPDATE Employee1
SET City= 'Islamabad'
where EmpID=12


Insert into Employee1
values(13,'KAIRA',35000,'Female','Islamabad',40) 
UPDATE Employee1
SET City= 'Islamabad'
where EmpID=13


Insert into Employee1
values(14,'FAIRA',90000,'Female','Islamabad',33)
UPDATE Employee1
SET City= 'Islamabad'
where EmpID=14
 

Insert into Employee1
values(15,'SMAIRA',25000,'Female','Islamabad',42)
UPDATE Employee1
SET City= 'Islamabad'
where EmpID=15
 
Insert into Employee1
values(16,'AHAD',70000,'male','Islamabad',50)

Insert into Employee1
values(17,'FAHAD',75000,'male','Islamabad',51)

Insert into Employee1
values(18,'ZAHAD',65000,'male','Islamabad',46)

Insert into Employee1
values(19,'RAHAT',40000,'male','Islamabad',32)

Insert into Employee1
values(20,'FAISAL',50000,'male','Islamabad',42)

Insert into Employee1
values(21,'SANAM',22000,'Female','Karachi',21)

Insert into Employee1
values(22,'ANAM',23000,'Female','Karachi',30) 

Insert into Employee1
values(23,'TAYYABA',50000,'Female','Karachi',32) 

Insert into Employee1
values(24,'IMAN',25000,'Female','Karachi',42) 

Insert into Employee1
values(25,'EMAN',32000,'Female','Karachi',50)
UPDATE Employee1
SET Name= 'KAMAL'
where EmpID=25

Insert into Employee1
values(26,'SANAM',22000,'male','Karachi',64)
UPDATE Employee1
SET Name= 'JAMAL'
where EmpID=26

Insert into Employee1
values(27,'ANAM',23000,'male','Karachi',42) 
UPDATE Employee1
SET Name= 'ONN AHMAD'
where EmpID=27

Insert into Employee1
values(28,'TAYYABA',50000,'male','Karachi',32) 
UPDATE Employee1
SET Name= 'AHSAN'
where EmpID=28

Insert into Employee1
values(29,'IMAN',25000,'male','Karachi',24) 
UPDATE Employee1
SET Name= 'IMRAN'
where EmpID=29

Insert into Employee1
values(30,'EMAN',32000,'male','Karachi',52)
UPDATE Employee1
SET Name= 'FAIZAN'
where EmpID=30

//SQL QUERIES

SELECT COUNT (EmpID)  FROM Employee

SELECT MAX (Age) FROM Employee -- group command

WHERE city='Lahore';


SELECT MAX (Age) FROM Employee1
WHERE Salary>500;

SELECT *  from Employee1 ORDER BY Salary DESC  

SELECT Count (*)as city_count  FROM Employee1 Group by City 

SELECT Count (*)as city_count  FROM Employee1  Group by City,Gender 

SELECT Count (*)as city_count  FROM Employee1 where Gender='F' Group by City,Gender 

SELECT SUM (Salary)as Salary  FROM Employee1 Group by Gender

SELECT SUM (Salary)as salary_3 ,city FROM Employee1  Group by City,Gender 

SELECT SUM (Salary)as salarycount  FROM Employee1 where City='lahore' Group by Gender 

SELECT SUM (Salary)as salarycount  FROM Employee1 where City='lahore' Group by Gender 

SELECT SUM (Salary)as salarycount_female, city  FROM Employee1 where Gender='F' Group by city HAVING SUM(Salary)>1500 

// SQL VARIABLE DECLARATION
DECLARE @num int=10
Select @num

set @num=20
Select @num

Set @num= (Select Age from Employee1 where EmpID=1)
Select @num

IF @num>30
BEGIN
	select 'Age is greater than 30'
END

ELSE
BEGIN
	select 'Age is less than 30'
END

//Adding first 10 natural numbers in SQL

DECLARE @Count int=1
DECLARE @Sum int=0
WHILE(@Count<=10)
BEGIN
	SET @Sum=@Sum+@Count
	SET @Count=@Count+1
END
SELECT  @Sum AS 'Sum of first 10 natural numbers'


DECLARE @record Table
(
	ID int,
	Name varchar
)
INSERT INTO  @record(ID,Name) values (1, 'Mubeen')
INSERT INTO  @record(ID,Name) values (2, 'Abdul')
INSERT INTO  @record(ID,Name) values (3, 'Hameed')

Select * from @record

Select GETDATE()

Select CAST(1 as varchar)+'ABC'

Select CONVERT(int,1.1)

Select convert (datetime,'2022-12-09')

Select convert(varchar,GETDATE(),101)
