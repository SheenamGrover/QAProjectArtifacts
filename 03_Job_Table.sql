Drop Table Job
GO
create table Job (Job_ID int primary key,Job_Name varchar(50))
GO
insert into Job VALUES (667,'Clerk'),(668,'Staff'),(669,'Analyst'),(670,'Salesperson'), (671,'Manager'),(672,'President')
GO
select * from Job