create view EmployeeOrderTotals as
select Employee.StoreId, Employee.EmployeeId, Employee.FirstName, Employee.LastName,
       count(Orders.OrderId) as TotalOrders
from Employee
join Orders on Employee.EmployeeId = Orders.EmployeeId
group by Employee.StoreId, Employee.EmployeeId, Employee.FirstName, Employee.LastName;
