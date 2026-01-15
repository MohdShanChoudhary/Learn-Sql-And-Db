SELECT *
FROM products
WHERE price > (SELECT AVG(price) FROM products);


-- 1. LENGTH() → string ki length
SELECT LENGTH(name) FROM products;

-- 2. UPPER() → uppercase me convert
SELECT UPPER(name) FROM products;

-- 3. LOWER() → lowercase me convert
SELECT LOWER(name) FROM products;

-- 4. CONCAT() → strings jodna
SELECT CONCAT(name, ' - ', cetagory) FROM products;

-- 5. SUBSTRING() → string ka part nikalna
SELECT SUBSTRING(name, 1, 4) FROM products;

-- 6. TRIM() → spaces hataana
SELECT TRIM('   Laptop   ');

-- 7. LTRIM() → left side space remove
SELECT LTRIM('   Laptop');

-- 8. RTRIM() → right side space remove
SELECT RTRIM('Laptop   ');

-- 9. REPLACE() → word change karna
SELECT REPLACE(name, 'Laptop', 'Notebook') FROM products;

-- 10. POSITION() → word ki position
SELECT POSITION('top' IN name) FROM products;

-- 11. LEFT() → left se characters lena
SELECT LEFT(name, 3) FROM products;

-- 12. RIGHT() → right se characters lena
SELECT RIGHT(name, 3) FROM products;

-- 13. REPEAT() → text repeat
SELECT REPEAT(name, 2) FROM products;

-- 14. REVERSE() → string ulta karna
SELECT REVERSE(name) FROM products;

-- 15. INITCAP() (PostgreSQL) → First letter capital
SELECT INITCAP(name) FROM products;




-- alter 
-- 1. New column add karna
ALTER TABLE products
ADD discount INT;

-- 2. Column ka name change karna
ALTER TABLE products
RENAME COLUMN cetagory TO category;

-- 3. Column ka datatype change karna
ALTER TABLE products
ALTER COLUMN price TYPE DECIMAL(12,2);

-- 4. Default value set karna
ALTER TABLE products
ALTER COLUMN stock_quantity SET DEFAULT 10;

-- 5. Column delete karna
ALTER TABLE products
DROP COLUMN discount;


-- 6.  rename table 
ALTER TABLE products
RENAME TO product_details;

-- --7 
-- DELETE = Data hatao
-- DROP = Table udaao




-- case ->  it is if-else of sql 
-- 1. Price ke basis par product type
select * from products;
SELECT name, price,
CASE
    WHEN price > 50000 THEN 'Expensive'
    WHEN price BETWEEN 10000 AND 50000 THEN 'Medium'
    ELSE 'Cheap'
END AS price_category
FROM products;

-- 2. Stock status check
SELECT name, stock_quantity,
CASE
    WHEN stock_quantity = 0 THEN 'Out of Stock'
    WHEN stock_quantity < 20 THEN 'Low Stock'
    ELSE 'Available'
END AS stock_status
FROM products;





