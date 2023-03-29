select 	
	product_id, 
	json_extract(properties, '$.weight') as weight
from products
where product_id =1;

/* drugi nacin da se napise je sa ->

select 	
	product_id, 
	properties -> '$.weight'  as weight
from products
where product_id =1;
*/