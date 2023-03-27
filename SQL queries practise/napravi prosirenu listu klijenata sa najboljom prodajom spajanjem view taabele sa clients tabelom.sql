use sql_invoicing;
select*
from sales_by_client
join clients using (client_id)