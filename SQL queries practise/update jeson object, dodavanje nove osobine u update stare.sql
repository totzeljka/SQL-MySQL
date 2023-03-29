use sql_store;
update products
set properties= json_set(
	properties,
	'$.weight',20,
	'$.age',10
)
where product_id =1;