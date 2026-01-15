-- A type  of mini project 
create table products (
product_id serial primary key ,
name varchar(100) not null ,
sku_code char(8) unique not null ,
price numeric (10,2) check (price>=0),
stock_quantity int default 0 check (stock_quantity>=0),
is_avlable boolean default TRUE ,
cetagory text not null ,
add_on date default current_date ,
last_update timestamp default now());
-- this is run on my sql not postgres sql - DESC products ;
-- \d products - we want to use this for view table
INSERT INTO products
(name, sku_code, price, stock_quantity, is_avlable, cetagory, add_on, last_update)
VALUES
('Laptop Dell Inspiron', 'SKU00001', 55000.00, 15, TRUE, 'Electronics', CURRENT_DATE, NOW()),
('Wireless Mouse', 'SKU00002', 799.50, 120, TRUE, 'Accessories', CURRENT_DATE, NOW()),
('Mechanical Keyboard', 'SKU00003', 3499.99, 40, TRUE, 'Accessories', CURRENT_DATE, NOW()),
('Smartphone Samsung', 'SKU00004', 28000.00, 25, TRUE, 'Electronics', CURRENT_DATE, NOW()),
('USB-C Charger', 'SKU00005', 999.00, 200, TRUE, 'Electronics', CURRENT_DATE, NOW()),
('Office Chair', 'SKU00006', 7200.75, 10, TRUE, 'Furniture', CURRENT_DATE, NOW()),
('Water Bottle Steel', 'SKU00007', 499.00, 80, TRUE, 'Home & Kitchen', CURRENT_DATE, NOW()),
('Bluetooth Speaker', 'SKU00008', 2499.99, 35, TRUE, 'Electronics', CURRENT_DATE, NOW()),
('Notebook A4', 'SKU00009', 120.00, 300, TRUE, 'Stationery', CURRENT_DATE, NOW()),
('LED Desk Lamp', 'SKU00010', 1599.00, 50, FALSE, 'Furniture', CURRENT_DATE, NOW());
select * from products ;
INSERT INTO products
(name, sku_code, price, stock_quantity, is_avlable, cetagory)
VALUES
('LED Lamp', 'SKU00011', 1599.00, 51, FALSE, 'Furniture');

