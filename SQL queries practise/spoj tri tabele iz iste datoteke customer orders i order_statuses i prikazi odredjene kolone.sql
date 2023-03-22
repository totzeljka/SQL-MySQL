use sql_store;

select 
o.order_id, 
o.order_date, 
c.first_name, 
c.last_name, 
os.name AS status

from orders o
join customers c ON  o.customer_id=c.customer_id
join  order_statuses os on order_status_id= o.status