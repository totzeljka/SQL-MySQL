use sql_store;
update products
set properties= json_remove(
	properties,
	'$.age'
)
where product_id =1;