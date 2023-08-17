--18) List out the employee id, last name in ascending order based on the employee id.
select Emp_ID, LastName from Employee ORDER by Emp_ID

--19) List out the employee id, name in descending order based on salary column
select Emp_ID, LastName, Salary from Employee order by Salary DESC

--20) list out the employee details according to their last_name in ascending order and salaries in descending order
select LastName, Salary from Employee order by LastName, Salary DESC

--21) list out the employee details according to their last_name in ascending order and then on department_id in descending order.
select LastName, Dept_ID from Employee order by LastName, Dept_ID DESC