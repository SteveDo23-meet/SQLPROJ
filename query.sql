SELECT c.CustomerID, c.FirstName, c.LastName, SUM(oi.Quantity * oi.UnitPrice) AS TotalSpent
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN orderitems oi ON o.OrderID = oi.OrderID
GROUP BY c.CustomerID
ORDER BY TotalSpent DESC;


