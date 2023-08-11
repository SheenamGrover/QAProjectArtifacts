Drop Table Locations
GO
create table Locations (Location_ID int primary key,RegionalGroup varchar(50))
GO
insert into Locations VALUES (122,'New York'),(123,'Dallas'),(124,'Chicago'),(167,'Boston')
GO
select * from Locations