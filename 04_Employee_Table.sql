Drop Table Employee
GO
create table Employee (Emp_ID int primary key,LastName varchar(50),
FirstName varchar(50),MiddleName varchar(50),Job_ID int,Manager_ID int, HireDate Date,Salary int,Comm varchar(50),Dept_ID int)
GO
insert into Employee VALUES (7369,'Smith','John','Q',667,7902,'17-Dec-84',800,Null,20),
                            (7499,'Allen','Kevin','J',670,7698,'20-Feb-85',1600,300,30),
                            (7505,'Doyle','Jean','K',671,7839,'04-Apr-85',2850,Null,30),
                            (7506,'Dennis','Lynn','S',671,7839,'15-May-85',2750,Null,30),
                            (7507,'Baker','Leslie','D',671,7839,'10-Jun-85',2200,Null,30),
                            (7521,'Wark','Cynthia','D',670,7698,'22-Feb-85',1250,500,30)
GO
select * from Employee
