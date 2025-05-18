
-- 1. Customer Total Purchases Ordered by Amount Spent

SELECT c.CustomerID, c.FirstName, c.LastName, SUM(oi.Quantity * oi.UnitPrice) AS TotalSpent
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN orderitems oi ON o.OrderID = oi.OrderID
GROUP BY c.CustomerID
ORDER BY TotalSpent DESC;

-- 2. Top Rated Products (With Minimum 3 Reviews)

SELECT p.ProductName, AVG(r.Rating) AS AvgRating
FROM products p
JOIN reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID
HAVING COUNT(r.ReviewID) >= 3
ORDER BY AvgRating DESC
LIMIT 10;

-- 3. Orders with Incomplete Payments

SELECT o.OrderID, o.TotalAmount, SUM(p.PaymentAmount) AS PaidAmount
FROM orders o
JOIN payments p ON o.OrderID = p.OrderID
GROUP BY o.OrderID
HAVING PaidAmount < o.TotalAmount;

-- 4. Total Revenue by Payment Method

SELECT PaymentMethod, SUM(PaymentAmount) AS TotalRevenue
FROM payments
GROUP BY PaymentMethod
ORDER BY TotalRevenue DESC;

-- 5. Automatically Update Order Total When Items Are Added

DELIMITER //

CREATE TRIGGER trg_update_total_after_insert
AFTER INSERT ON orderitems
FOR EACH ROW
BEGIN
    UPDATE orders
    SET TotalAmount = (
        SELECT SUM(Quantity * UnitPrice)
        FROM orderitems
        WHERE OrderID = NEW.OrderID
    )
    WHERE OrderID = NEW.OrderID;
END;
//

DELIMITER ;

-- 6. Preventing Duplicate Payment for an Order


DELIMITER //

CREATE TRIGGER trg_prevent_overpayment
BEFORE INSERT ON payments
FOR EACH ROW
BEGIN
    DECLARE total_paid DECIMAL(10,2);

    SELECT IFNULL(SUM(PaymentAmount), 0)
    INTO total_paid
    FROM payments
    WHERE OrderID = NEW.OrderID;

    IF total_paid + NEW.PaymentAmount > (
        SELECT TotalAmount FROM orders WHERE OrderID = NEW.OrderID
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Payment exceeds total order amount.';
    END IF;
END;
//

DELIMITER ;

-- 7. Calculate Customer Lifetime Value Based on Orders and Payments, Returning Total Amount and Statistical Data

DELIMITER //

CREATE PROCEDURE CalculateCustomerLifetimeValue (IN custID INT, OUT totalSpent DECIMAL(10,2), OUT avgOrderValue DECIMAL(10,2), OUT orderCount INT)
BEGIN
    -- סיכום סכום כולל של הזמנות שהושלמו (Delivered)
    SELECT IFNULL(SUM(o.TotalAmount),0),
           IFNULL(AVG(o.TotalAmount),0),
           COUNT(o.OrderID)
    INTO totalSpent, avgOrderValue, orderCount
    FROM orders o
    WHERE o.CustomerID = custID AND o.OrderStatus = 'Delivered';

END;
//

DELIMITER ;

-- 8. Deleting Reviews When Deleting a Product

DELIMITER //

CREATE TRIGGER trg_delete_reviews_on_product_delete
AFTER DELETE ON products
FOR EACH ROW
BEGIN
    DELETE FROM reviews WHERE ProductID = OLD.ProductID;
END;
//

DELIMITER ;

-- 9. Update Order Status to "Cancelled" If No Payment Was Made Within 7 Days

UPDATE orders o
SET o.OrderStatus = 'Cancelled'
WHERE o.OrderStatus = 'Pending'
  AND o.OrderDate <= NOW() - INTERVAL 7 DAY
  AND o.OrderID NOT IN (
    SELECT DISTINCT OrderID FROM payments
  );
  
  -- 10. Customers with Average Order Value Over 1000, Including Total Payments Made and Time Span (Days) Since Their First Order
  SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    AVG(o.TotalAmount) AS AvgOrderAmount,
    SUM(p.PaymentAmount) AS TotalPayments,
    DATEDIFF(MAX(o.OrderDate), MIN(o.OrderDate)) AS DaysAsCustomer
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID
LEFT JOIN payments p ON o.OrderID = p.OrderID
WHERE o.OrderID IS NOT NULL
GROUP BY c.CustomerID
HAVING AVG(o.TotalAmount) > 1000
ORDER BY TotalPayments DESC;

-- 11. Products Ordered in at Least 3 Different Orders, with Average Rating Above 4 and Price Above the Average Price in Their Category
SELECT 
    p.ProductID,
    p.ProductName,
    c.CategoryName,
    AVG(r.Rating) AS AvgRating,
    COUNT(DISTINCT oi.OrderID) AS NumberOfOrders,
    p.Price
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
JOIN orderitems oi ON p.ProductID = oi.ProductID
LEFT JOIN reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID, c.CategoryName
HAVING NumberOfOrders >= 3
   AND AvgRating > 4
   AND p.Price > ALL (
       SELECT AVG(Price) 
       FROM products 
       WHERE CategoryID = p.CategoryID
   )
ORDER BY AvgRating DESC, NumberOfOrders DESC
LIMIT 10;



