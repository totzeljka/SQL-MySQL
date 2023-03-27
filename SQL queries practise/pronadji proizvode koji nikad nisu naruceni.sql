use sql_store;
select *
from products p
where not exists (
/*correlated subqueries*/
select product_id
from order_items
where product_id = p.product_id

)