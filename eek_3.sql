use master 
create database week_3
use week_3
create Table Employee(
EmpID int NOT NULL,
Name nvarchar(60),
Salary int ,
Gender nvarchar (50),
city nvarchar (50),
Age int,
PRIMARY KEY (EmpID))
SELECT * from Employee

INSERT INTO Employee
VALUES (1,'Sidra', 20000,'F','Lahore', 25);
INSERT INTO Employee
VALUES (2,'Maira', 50000,'F','Lahore', 50);
INSERT INTO Employee
VALUES (3,'Sadia', 40000,'F','Lahore', 45);
INSERT INTO Employee
VALUES (4,'nadra', 60000,'F','Lahore', 35);
INSERT INTO Employee
VALUES (5,'hira', 26000,'F','Lahore', 20);


INSERT INTO Employee
VALUES (6,'Ali', 40000,'M','Lahore', 25);
INSERT INTO Employee
VALUES (7,'Hamid', 50000,'M','Lahore', 50);
INSERT INTO Employee
VALUES (8,'Fahad', 40000,'M','Lahore', 45);
INSERT INTO Employee
VALUES (9,'Fawad', 60000,'M','Lahore', 35);
INSERT INTO Employee
VALUES (10,'Mahad', 26000,'M','Lahore', 20);

INSERT INTO Employee
VALUES (11,'Roohi', 20000,'F','ISB', 25);
INSERT INTO Employee
VALUES (12,'Faria', 50000,'F','ISB', 50);
INSERT INTO Employee
VALUES (13,'Saima', 40000,'F','ISB', 45);
INSERT INTO Employee
VALUES (14,'Farwa', 60000,'F','ISB', 35);
INSERT INTO Employee
VALUES (15,'Nida', 26000,'F','ISB', 20);
INSERT INTO Employee

VALUES (16,'Hadi', 20000,'M','ISB', 25);
INSERT INTO Employee
VALUES (17,'Daud', 50000,'M','ISB', 50);
INSERT INTO Employee
VALUES (18,'Ahmad', 40000,'M','ISB', 45);
INSERT INTO Employee
VALUES (19,'Khalid', 60000,'M','ISB', 35);
INSERT INTO Employee
VALUES (20,'Alian', 26000,'M','ISB', 20);

INSERT INTO Employee
VALUES (21,'Roohi', 20000,'F','KHI', 25);
INSERT INTO Employee
VALUES (22,'Faria', 50000,'F','KHI', 50);
INSERT INTO Employee
VALUES (23,'Saima', 40000,'F','KHI', 45);
INSERT INTO Employee
VALUES (24,'Farwa', 60000,'F','KHI', 35);
INSERT INTO Employee
VALUES (25,'Nida', 26000,'F','KHI', 20);
INSERT INTO Employee

VALUES (26,'Hadi', 20000,'M','KHI', 25);
INSERT INTO Employee
VALUES (27,'Daud', 50000,'M','KHI', 50);
INSERT INTO Employee
VALUES (28,'Ahmad', 40000,'M','KHI', 45);
INSERT INTO Employee
VALUES (29,'Khalid', 60000,'M','KHI', 35);
INSERT INTO Employee
VALUES (30,'Alian', 26000,'M','KHI', 20);
INSERT INTO Employee
VALUES (5,'hira', 26000,'F','Lahore', 20);

SELECT COUNT (EmpID)  FROM Employee

SELECT MAX (Age) FROM Employee -- group command

WHERE city='Lahore';


SELECT MAX (Age) FROM Employee

WHERE Salary>500;

SELECT *  from Employee ORDER BY Salary DESC  

SELECT Count (*)as city_count  FROM Employee Group by City 
SELECT Count (*)as city_count  FROM Employee  Group by City,Gender 
SELECT Count (*)as city_count  FROM Employee where Gender='F' Group by City,Gender 

SELECT SUM (Salary)as Salary  FROM Employee Group by Gender

SELECT SUM (Salary)as salary_3 ,city FROM Employee  Group by City,Gender 

SELECT SUM (Salary)as salaycount  FROM Employee where City='lahore' Group by Gender 


SELECT SUM (Salary)as salaycount  FROM Employee where City='lahore' Group by Gender 

SELECT SUM (Salary)as salaycount_female, city  FROM Employee where Gender='F' Group by city HAVING SUM(Salary)>1500 

DECLARE @NUM int=10 -- execute together all 
SELECT @NUM
set @NUM =20 
SELECT @NUM
set @NUM= (SELECT  age FROM Employee WHERE EmpID=1)
SELECT @NUM
IF @NUM>20 
BEGIN
      SELECT @NUM
END
SELECT 'HYE SIDRA'
--Loop
DECLARE @Count int=1
DECLARE @Sum int=0
WHILE(@Count<=10)
BEGIN 
    SET @Sum=@Sum+@Count
	SET @Count=@Count+1

END 
SELECT @Sum 'SUM'

DECLARE @record Table(

ID int,
Name varchar (50)
)
Insert into @record(ID, Name) values (1,'Sidra')
Insert into @record(ID, Name) values (1,'Roohi')
Select * from @record

Select getdate()
select cast(1 as varchar) + 'abc'
select convert (int,1.1) 
select convert (datetime,'2022-12-09') 
--FORMATS
SELECT CONVERT (varchar,getdate(),103)







 




