use sql_store;
explain select customer_id
from customers
where points>1000;

/* dobija se 1010 */

create index idx_points on customers (points);
/* kada opet izvedem gornji kveri dobijam 528 redova */