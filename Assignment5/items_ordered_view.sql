use erik_nilsson_guitar_shop;

create view items_ordered
/*there is no such thing as item_name so I just used product name*/
(item_name, item_price, quantity) as
select product_name, item_price, quantity
from order_items join products
	on order_items.product_id = products.product_id;