select*, quantity*unit_price AS total_price
from order_items
where order_id=2
order by total_price desc