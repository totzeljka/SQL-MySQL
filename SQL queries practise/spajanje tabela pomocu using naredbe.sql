use sql_store;

select  * 
from order_items oi
join order_item_notes oin
	 Using (product_id)
 