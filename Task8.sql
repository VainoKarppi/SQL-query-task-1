select sum(Products.Price) as TotalSumOfOrders
from OrderDetails
join Products on OrderDetails.ProductId = Products.ProductId;
