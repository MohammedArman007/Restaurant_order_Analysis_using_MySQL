use restaurant_db;

-- view the menu table

select * from menu_items;

-- number of items on the menu

select count(*) from menu_items;

-- least and most expensive items on the menu

select * from menu_items
order by price;

select * from menu_items
order by price desc;

-- Italian dishes on the menu

select count(*) from menu_items
where category = "Italian";

-- least and most expensive Italian dishes on the menu

select * from menu_items
where category = "Italian"
order by price;

select * from menu_items
where category = "Italian"
order by price desc;

-- number of dishes and cuisines

select category, count(menu_item_id) as num_dishes
from menu_items
group by category;

-- avg dish price

select category, avg(price) as avg_dish_price
from menu_items
group by category;
