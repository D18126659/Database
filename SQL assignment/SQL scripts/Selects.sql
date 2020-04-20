select * from services;  
select * from customer;
select * from product_manufacturer;
select * from edmund_stock;
select * from edmund_sales;

--Minus
SELECT 
    manufacture_id 
FROM
    product_manufacturer 
MINUS 
SELECT 
     product_manufacturer_manufacture_id
FROM
    edmund_stock;

--Union
SELECT manufacture_id
FROM product_manufacturer
UNION
SELECT  product_manufacturer_manufacture_id
FROM edmund_stock
ORDER BY manufacture_id;

--Intersects
SELECT cust_name , customer_id 
FROM customer 
WHERE cust_name='Jeremy Fitzgerald';

INTERSECT

SELECT customer_customer_id 
FROM edmund_repair
WHERE customer_customer_id>2000;

--Project
select  manufacture_id, manufacturer_name  from product_manufacturer where manufacture_id  = 'RG';

--Join
SELECT *
FROM edmund_stock INNER JOIN product_manufacturer
ON edmund_stock.manufacturer_id = product_manufacturer.manufacture_id;

