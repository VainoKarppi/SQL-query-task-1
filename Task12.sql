select OrderDetails.OrderId, sum(Products.Price) as TotalPrice
from OrderDetails
join Products on OrderDetails.ProductId = Products.ProductId
group by OrderDetails.OrderId
having sum(Products.Price) < 200 and sum(Products.Price) > 100