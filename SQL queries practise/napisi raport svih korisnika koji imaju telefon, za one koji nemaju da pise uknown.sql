use sql_store;
select concat(first_name, ' ', last_name) as sustomer,
coalesce(phone, 'unknown') as phone
from customers