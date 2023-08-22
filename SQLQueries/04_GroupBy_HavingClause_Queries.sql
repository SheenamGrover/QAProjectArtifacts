--22) How many employees who are working in different departments wise in the organization
select Dept_ID,count(*) from Employee group by Dept_ID

--23) List out the department wise maximum salary, minimum salary, average salary of the employees
select Dept_ID,count(*) as Number_of_Employees,min(Salary) as Min_Salary,max(Salary) as Max_Salary,AVG(Salary) as Avg_Salary from Employee group by Dept_ID

--24) List out the job wise maximum salary, minimum salary, average salaries of the employees.
select Job_ID,count(*) as Number_of_Employees,min(Salary) as Min_Salary,max(Salary) as Max_Salary,AVG(Salary) as Avg_Salary 
from Employee group by Job_ID

--25) List out the no.of employees joined in every month in ascending order.
select DATENAME(month, HireDate) as Month_Name, COUNT(*) as Number_of_Employees 
from Employee 
GROUP by DATENAME(month, HireDate),MONTH(HireDate) order by MONTH(HireDate)

--26) List out the no.of employees for each month and year, in the ascending order based on the year, month.
select DATENAME(MONTH,HireDate) as Month_Name,DATENAME(YEAR,Hiredate) as Joining_Year,COUNT(*) as Number_of_Employees 
from Employee
GROUP BY DATENAME(MONTH,HireDate),DATENAME(YEAR,Hiredate)

--27) List out the department id having atleast four employees.
select Dept_ID, COUNT(*) as Total_Employees
from Employee
GROUP BY Dept_ID having COUNT(*)>=4

--28) How many employees in January month.
select DATENAME(MONTH,HireDate) as Month_Name,COUNT(*) as Num_Employees
from Employee
GROUP by DATENAME(MONTH,HireDate) having DATENAME(MONTH,HireDate)='January'

DECLARE @MonthName VARCHAR(20)='December'
select @MonthName as Month_Name,COUNT(*) as Num_Employees
from Employee where DATENAME(MONTH,HireDate)=@MonthName

--29) How many employees who are joined in January or September month.
select DATENAME(Month,HireDate),COUNT(*)
from Employee where DATENAME(MONTH,HireDate) in ('April','may')
GROUP by DATENAME(MONTH,HireDate)

select DATENAME(Month,HireDate),COUNT(*)
from Employee 
GROUP by DATENAME(MONTH,HireDate) HAVING DATENAME(MONTH,HireDate) in ('April','may')

--30) How many employees who are joined in 1985.
SELECT DATENAME(YEAR,HireDate),COUNT(*)
from Employee where DATENAME(YEAR,HireDate)=1985
GROUP by DATENAME(YEAR,HireDate)

SELECT DATENAME(YEAR,HireDate),COUNT(*)
from Employee
GROUP by DATENAME(YEAR,HireDate) having DATENAME(YEAR,HireDate)=1985

--31) How many employees joined each month in 1985.
set statistics io on
set statistics time on
DECLARE @Year int=1985
SELECT DATENAME(MONTH,HireDate),@Year,COUNT(*)
from Employee where DATENAME(YEAR,HireDate)=@Year
GROUP BY DATENAME(MONTH,HireDate)
GO
DECLARE @Year int=1985
SELECT DATENAME(MONTH,HireDate),DATENAME(YEAR,HireDate) ,COUNT(*)
from Employee 
GROUP BY DATENAME(MONTH,HireDate), DATENAME(YEAR,HireDate) having DATENAME(YEAR,HireDate)=@Year

--32) How many employees who are joined in March 1985.
GO
DECLARE @Year int=1985, @MonthName VARCHAR(20)='February'
SELECT @MonthName,@Year,COUNT(*)
from Employee where DATENAME(MONTH,HireDate)=@MonthName and DATENAME(YEAR,HireDate)=@Year
GROUP BY DATENAME(MONTH,HireDate),DATENAME(YEAR,HireDate)

GO
DECLARE @Year int=1985, @MonthName VARCHAR(20)='February'
SELECT @MonthName,@Year,COUNT(*)
from Employee
GROUP BY DATENAME(MONTH,HireDate),DATENAME(YEAR,HireDate)
HAVING DATENAME(MONTH,HireDate)=@MonthName and DATENAME(YEAR,HireDate)=@Year

--33) Which is the department id, having greater than or equal to 3 employees joined in April 1985.

GO
DECLARE @Year int=1985, @MonthName VARCHAR(20)='April'
SELECT Dept_ID,@MonthName,@Year, COUNT(*)
FROM Employee where DATENAME(MONTH,HireDate)=@MonthName and DATENAME(YEAR,HireDate)=@Year
GROUP BY Dept_ID HAVING COUNT(*)>=1