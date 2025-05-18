ALTER TABLE products
ADD CONSTRAINT chk_price_positive CHECK (Price > 0);

ALTER TABLE orderitems
ADD CONSTRAINT chk_quantity_positive CHECK (Quantity >= 1);

ALTER TABLE reviews
ADD CONSTRAINT chk_rating_range CHECK (Rating BETWEEN 1 AND 5);

ALTER TABLE payments
ADD CONSTRAINT chk_payment_positive CHECK (PaymentAmount > 0);