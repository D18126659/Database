ALTER SESSION SET CURRENT_SCHEMA = builder2;
select * from builder2.stock;

DESCRIBE builder2.stock;

SELECT stock_code,stock_description,unit_price,unitcostprice 
FROM builder2.stock;

SELECT CONCAT('€',unitcostprice)
FROM builder2.stock;
SELECT CONCAT('€',UNIT_PRICE)
FROM builder2.stock;

SELECT STOCK_CODE "Stock code",STOCK_DESCRIPTION "stock description",unit_price"Unit Price",unitcostprice"Unit cost price"
FROM builder2.stock;

select stock_code "Stock Code",
Stock_description "Stock Description",
to_char(UNIT_PRICE,'U9,999.99')"Unit Price",
to_char(unitcostprice,'U9,999.99')"Unit Price Cost",
to_char(unit_price - unitcostprice,'U9,999.99')"Profit"
from Builder2.stock;

SELECT * FROM BUILDER2.STOCK
ORDER BY Unit_price DESC;

--Question G
select 'the stock item'||stock_code||'is a '||stock_description from Builder2.stock;

alter session set current_schema = pobyrne;

describe pobyrne.m_movies;
commit;

