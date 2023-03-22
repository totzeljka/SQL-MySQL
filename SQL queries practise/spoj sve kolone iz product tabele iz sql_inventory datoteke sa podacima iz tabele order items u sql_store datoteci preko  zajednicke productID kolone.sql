use sql_store;
select *
from order_items oi
join sql_inventory.products p 
	ON oi.product_id = p.product_id


/* 
moze i obrnuto , sbvejedno je
use sql_inventory;
select *
from sql_store.order_items oi
join products p 
	ON oi.product_id = p.product_id

*/