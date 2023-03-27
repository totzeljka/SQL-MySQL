use sql_store;
select 
	order_id,
    case
    /*ne trebaju zarezi!!!*/
		when year(order_date) = year (now()) then 'Active'
		when year(order_date) = year (now())-1  then 'Last year'
		when year(order_date) < year (now())-1  then 'Archived'
		else 'Future'
  end  as category 
from orders