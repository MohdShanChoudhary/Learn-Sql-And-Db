-- clauses  in sql 
-- SELECT
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT


select * from products ;
select name ,price from products;
select * from products where cetagory='Electronics';

select cetagory from products group by cetagory ;
SELECT cetagory, name
FROM products
GROUP BY cetagory, name;

SELECT cetagory, COUNT(*)
FROM products
GROUP BY cetagory;

-- this is wrong ->
-- select name from products group by cetagory ;
-- select * from products group by cetagory ;


--as clause 
select * from products;
select price as new_price , name as new_name from products;

-- operators in sql 
select * from products ;
select * from products where stock_quantity > 80;
select * from products where stock_quantity > 80 and cetagory ='Electronics';

select * from products where stock_quantity > 80 and stock_quantity < 300 ;

select * from products where stock_quantity between 80 and 300;

select * from products where cetagory ='electronics' or cetagory='Accessories';
SELECT *
FROM products
WHERE cetagory IN ('Electronics', 'Accessories', 'Furniture');
SELECT *
FROM products
WHERE name LIKE 'L%';

SELECT *
FROM products
WHERE name LIKE '%Book%';
SELECT *
FROM products
WHERE name LIKE '%p';
SELECT *
FROM products
WHERE cetagory = 'Electronics'
AND stock_quantity > 50;
SELECT *
FROM products
WHERE cetagory = 'Furniture'
OR cetagory = 'Accessories';

-- COUNT: total products
SELECT COUNT(*) FROM products;

-- SUM: total stock
SELECT SUM(stock_quantity) FROM products;

-- AVG: average price
SELECT AVG(price) FROM products;

-- MAX: highest price
SELECT MAX(price) FROM products;

-- MIN: lowest price
SELECT MIN(price) FROM products;

-- Aggregate with GROUP BY: count per category
SELECT cetagory, COUNT(*)
FROM products
GROUP BY cetagory;

-- Average price per category
SELECT cetagory, AVG(price)
FROM products
GROUP BY cetagory;

-- HAVING with aggregate: categories having more than 2 products
SELECT cetagory, COUNT(*)
FROM products
GROUP BY cetagory
HAVING COUNT(*) > 2;


