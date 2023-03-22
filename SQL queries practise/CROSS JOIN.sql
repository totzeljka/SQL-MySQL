/*
use sql_store;
select 
sh.name AS shipper,
p.name AS product
from shippers sh, products p
order by sh.name
*/
use sql_store;
select 
sh.name AS shipper,
p.name AS product
from shippers sh
CROSS JOIN products p
order by sh.name