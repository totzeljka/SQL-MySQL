use sql_store;
update products
set properties= json_object(
	'weight',10,
	'dimentions',jason_array (1,2,3),
	'manifacturer', json_object ('name', 'sony')
)
where product_id =1;



/*
umesto ovoga dole koji je json zapis
 mozemo pisati  u obliku sql zapisa: JSON_OBJECT(...)


'
{
"dimensions" :[1,2,3],
"weight": 10,
"manifacturer": {"name": "sony"}
}
'


*/