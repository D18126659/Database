alter session set current_schema = builder2;

select
    corderno,
    order_date,
    customer_name
from corder
join customer using (customer_id);

--2
select
    supplier_name,
    stock_description
from supplier
join stock using (supplier_id);

--3
select distinct
    customer_name,
    stock_description
from customer
join corder using (customer_id)
join corderline using (corderno)
join stock using (stock_code)
order by customer_name;

--4
select
    customer_name,
    count(corderno)
from customer
join corder using (customer_id)
group by customer_name;
 