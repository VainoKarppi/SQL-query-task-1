select ProductName
from Products
where Price = (select min(Price) from Products);