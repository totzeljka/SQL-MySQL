use sql_store;
select 
	order_id,
    order_date,
    if(
		year(order_date) = year (now()),
		'Active',
		'Archived') as category 
from orders
