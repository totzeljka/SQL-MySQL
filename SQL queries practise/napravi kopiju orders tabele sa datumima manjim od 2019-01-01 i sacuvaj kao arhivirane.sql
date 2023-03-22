create table orders_archived;
insert into orders_archived
select *
from orders
where order_date <'2019-01-01'
