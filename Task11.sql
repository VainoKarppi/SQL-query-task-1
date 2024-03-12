select ProductName
from Products
where Price <= (select 2 * min(Price) from Products);
