-- 1) List all the employee details
select * from Employee;

--2) List all the department details
select * from Department;

--3) List all job details
select * from Job;

--4) List all the locations
select * FROM Locations;

--5) List out first name,last name,salary, commission for all employees
select FirstName,LastName,Salary,Comm from Employee;

--6) List out employee_id,last name,department id for all employees and rename employee id as “ID of the employee”, last name as “Name of the employee”, department id as “department ID”
select Emp_Id as [ID of the employee],LastName as [Name of the employee],Dept_ID as [Department ID] from Employee;

--7) List out the employees annual salary with their names only.
select LastName +' '+ MiddleName +' '+ FirstName as FullName, Salary From Employee;