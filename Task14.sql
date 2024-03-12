create view StoreSalesTotals as
select Store.StoreId,
       Store.StoreName,
       sum(Products.Price) as TotalSales
from Store
left join Employee on Store.StoreId = Employee.StoreId
left join Orders on Employee.EmployeeId = Orders.EmployeeId
left join OrderDetails on Orders.OrderId = OrderDetails.OrderId
left join Products on OrderDetails.ProductId = Products.ProductId
group by Store.StoreId, Store.StoreName;
