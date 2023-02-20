use master
use WEEK_3

Create Table Department
(
	DeptID int,
	DName nvarchar(50),
	PRIMARY KEY(DeptID)
)

Select * from Department

insert into Department
values(1,'HR')

insert into Department
values(2,'Finance')

insert into Department
values(3,'Admin')

insert into Department
values(4,'Management')

insert into Department
values(5,'Academics')

insert into Department
values(6,'Computer Science')