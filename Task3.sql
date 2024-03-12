select ProductName, len(ProductName) as NameLenght
from Products
where len(ProductName) < 20