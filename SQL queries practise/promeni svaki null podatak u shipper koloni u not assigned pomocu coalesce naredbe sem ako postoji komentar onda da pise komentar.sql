use sql_store;
select  
order_id,
coalesce(shipper_id, comments, 'Not assigned') as shipper
from orders