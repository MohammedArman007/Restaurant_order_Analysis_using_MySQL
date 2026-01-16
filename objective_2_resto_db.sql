-- order details 

select * from order_details;

-- date range of orders

select min(order_date), max(order_date) from order_details;

-- orders made within the date range

select count(distinct order_id) from order_details;

-- items ordered within the date range

select count(*) from order_details;

-- orders with most number of items

select order_id, count(item_id) as num_orders
from order_details
group by order_id
order by num_orders desc;

-- orders with more than 12 items
select count(*) from

(select order_id, count(item_id) as num_orders
from order_details
group by order_id
having num_orders > 12) as num_orders;
