-- combine the tables

select * from menu_items;
select * from order_details;

select*
from order_details as od
left join menu_items as mi
on od.item_id = mi.menu_item_id;

-- least and most ordered items

select  item_name, count(order_details_id) as num_purchases
from order_details as od
left join menu_items as mi
on od.item_id = mi.menu_item_id
group by item_name
order by num_purchases;

-- top 5 orders

select order_id, sum(price) as tot_price
from order_details as od
left join menu_items as mi
on od.item_id = mi.menu_item_id
group by order_id
order by tot_price desc
limit 5;

-- details of highest spent order 

select * 
from order_details as od
left join menu_items as mi
on od.item_id = mi.menu_item_id
where order_id = "440";

-- details of top 5 orders

select order_id, category, count(item_id) as num_items
from order_details as od
left join menu_items as mi
on od.item_id = mi.menu_item_id
where order_id in (440, 2075, 1957, 330, 2675)
group by order_id, category;

