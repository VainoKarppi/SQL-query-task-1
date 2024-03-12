select concat(Employee.FirstName, ' ', Employee.LastName) as EmployeeFullName
from Employee
join StoreSalesTotals on Employee.StoreId = StoreSalesTotals.StoreId
where StoreSalesTotals.TotalSales = (select max(TotalSales) from StoreSalesTotals);
