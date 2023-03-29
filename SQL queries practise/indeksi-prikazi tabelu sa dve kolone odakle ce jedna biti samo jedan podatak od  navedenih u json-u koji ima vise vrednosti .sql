select 	
	product_id, 
	properties -> '$.dimentions[0]'  as dimention
from products
where product_id =1;

/* -> column pass operator

kada u json imamo key cija je vrednost niz, 
mozemo pristupiti samo jednoj vrednosti koriscenjem indeksa */