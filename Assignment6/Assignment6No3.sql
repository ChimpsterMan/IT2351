use erik_nilsson_guitar_shop;

Drop function if exists discount_price;
DELIMITER //
CREATE function discount_price(item_id_param int)
returns decimal(10,2)
deterministic reads sql data
begin
	declare discounted_item_price decimal(10,2);
    
    select (item_price-discount_amount) into discounted_item_price
    from order_items
    where item_id = item_id_param;
    
    return discounted_item_price;
end//

select item_price, discount_amount, discount_price(item_id)
from order_items;