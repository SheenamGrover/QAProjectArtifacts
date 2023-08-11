Drop Table Department
Go
create table Department (Dept_ID int primary key,Dept_Name varchar(50),Location_ID int)
GO
insert into Department values(10,'Accounting',122),(20,'Research',124),(30,'Sales',123),(40,'Operations',167)
GO
select * from Department