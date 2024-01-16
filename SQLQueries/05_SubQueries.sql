--34) Display the employee who got the maximum salary.
select * from Employee where Salary=(select max(Salary) from Employee)

--35) Display the employees who are working in Sales department
select * from Employee where Dept_ID in (select Dept_ID from Department where Dept_Name='Sales')

--36) Display the employees who are working as “Clerk”.
select * from Employee where Job_ID in (select Job_ID from Job where Job_Name='Clerk')

--37) Display the employees who are working in “New York”
SELECT * from Employee where Dept_ID in (select Dept_ID from Department where Location_ID in (SELECT Location_ID from Locations where RegionalGroup='New York'))

--38) Find out no.of employees working in “Sales” department.
Select COUNT(Emp_ID) as Employees_Sales_Dept from Employee where Dept_ID in (select Dept_ID from Department where Dept_Name='Sales')

--39) Update the employees salaries, who are working as Clerk on the basis of 10%.
UPDATE Employee set Salary= Salary + (Salary * 10/100) WHERE Job_ID in (select Job_ID from Job where Job_Name='Clerk')
--UPDATE Employee set Salary= 800 WHERE Job_ID =667
--SELECT * from Employee
--SELECT * FROM Job

--40) Delete the employees who are working in accounting department.
DELETE from Employee WHERE Dept_ID in (select Dept_ID from Department where Dept_Name= 'Accounting')

--41) Display the second highest salary drawing employee details.
select * from Employee where Salary = (select MAX(Salary) from Employee where Salary < (select MAX(Salary) from Employee))

--42) Display the Nth highest salary drawing employee details
--Select distinct e.salary from employee e where & no-1=(select count(distinct salary) from employee where sal>e.salary)
--SELECT FirstName, salary FROM Employee e1 WHERE N-1 = (SELECT COUNT(DISTINCT salary) FROM Employee e2 WHERE e2.salary > e1.salary)
-- N is the number for which nth highest salary is required e.g. 2,3,4.......
SELECT FirstName, salary FROM Employee e1 WHERE 2-1 = (SELECT COUNT(DISTINCT salary) FROM Employee e2 WHERE e2.salary > e1.salary)


