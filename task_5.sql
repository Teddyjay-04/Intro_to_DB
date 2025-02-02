-- Ensure the correct database is being used
USE alx_book_store;

-- 1. Check if the 'customers' table exists
SELECT 
    TABLE_NAME 
FROM 
    INFORMATION_SCHEMA.TABLES 
WHERE 
    TABLE_SCHEMA = DATABASE() 
    AND TABLE_NAME = 'customers';

-- 2. Check if the specific row exists with correct values
SELECT 
    customer_id,
    CONCAT(first_name, ' ', last_name) AS customer_name,
    email,
    address
FROM 
    customers
WHERE 
    customer_id = 1 
    AND first_name = 'Cole'
    AND last_name = 'Baidoo'
    AND email = 'cbaidoo@sandtech.com'
    AND address = '123 Happiness Ave.';
