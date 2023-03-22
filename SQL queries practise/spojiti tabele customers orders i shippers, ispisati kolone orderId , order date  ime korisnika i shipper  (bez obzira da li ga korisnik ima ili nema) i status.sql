select 
o.order_id,
o.order_date,
c.first_name AS customer,
sh.name AS shipper,
os.name AS status
from orders o
join customers c on o.customer_id = c.customer_id
left join shippers sh on o.shipper_id = sh.shipper_id
join order_statuses os on o.status=os.order_status_id
