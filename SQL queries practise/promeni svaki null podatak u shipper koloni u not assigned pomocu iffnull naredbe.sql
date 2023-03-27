use sql_store;
select  
order_id,
ifnull(shipper_id, 'Not assigned') as shipper
from orders