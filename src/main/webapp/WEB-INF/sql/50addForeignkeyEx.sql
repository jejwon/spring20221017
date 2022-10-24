USE w3schools;
DESC Customers;
DESC Orders;
-- foreign key 나중에 변경 -> alter 이용
ALTER TABLE Orders
ADD FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerId);
ALTER TABLE Orders
ADD FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeId);
ALTER TABLE Orders
ADD FOREIGN KEY(ShipperID) REFERENCES Shippers(ShipperId);

ALTER TABLE Products
ADD FOREIGN KEY(CategoryID) REFERENCES Categories(CategoryId);
ALTER TABLE Products
ADD FOREIGN KEY(SupplierID) REFERENCES Suppliers(SupplierId);

ALTER TABLE OrderDetails
ADD FOREIGN KEY(OrderID) REFERENCES Orders(OrderId);
ALTER TABLE OrderDetails
ADD FOREIGN KEY(ProductID) REFERENCES Products(ProductId);





