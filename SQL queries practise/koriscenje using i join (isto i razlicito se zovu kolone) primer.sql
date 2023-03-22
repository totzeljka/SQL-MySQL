use sql_invoicing;
select
p.date,
c.name AS client,
p.amount,
pm.name AS payment_method
from payments p
join clients c using (client_id)
join payment_methods pm on p.payment_method= pm.payment_method_id
