--8) List the details about “SMITH”
select * from Employee where LastName='Smith'

--9) List out the employees who are working in department 20
select * from Employee where Dept_ID=20

--10) List out the employees who are earning salary between 3000 and 4500
select * from Employee where Salary BETWEEN 3000 and 4500

--11) List out the employees who are working in department 10 or 20
select * from Employee where Dept_ID in (10,20) 

--12) Find out the employees who are not working in department 10 or 30
select * from Employee where Dept_ID not in (10,30)

--13) List out the employees whose name starts with “S”
select * from Employee where FirstName like 'S%'

--14) List out the employees whose name start with “S” and end with “H”
select * from Employee where LastName like 'S%H'

--15) List out the employees whose name length is 4 and start with “S”
select * from Employee where LastName like 'S____'

--16) List out the employees who are working in department 10 and draw the salaries more than 3500
select * FROM Employee WHERE Dept_ID=10 and Salary>3500

--17) list out the employees who are not receiving commission.
select * from Employee where Comm IS null