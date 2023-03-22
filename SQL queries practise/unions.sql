select 
order_id, 
order_date,
'Active' AS status
from orders
where order_date >= '2019-01-01'

UNION 

select 
order_id, 
order_date,
'Archived' AS status
from orders
where order_date < '2019-01-01'