insert into orders (customer_id, order_date, status)
values 
	(1,'2019-01-02', 1);
    
insert into order_items
values 
	(last_insert_id(),1,1,2.95)

	/*moguc je unos vise redova , samo paziti da su vrednosti u ogranicenim parametrima pisane na
    ispravan nacin i odvojeno zarezom sem poslednje
    
    
    insert into orders (customer_id, order_date, status)
values 
	(1,'2019-01-02', 1),
    (5,'2019-02-02', 1),
    (7,'2019-02-05',10);
    
insert into order_items
values 
	(last_insert_id(),1,1,2.95),
	(last_insert_id(),1,1,2.95),
	(last_insert_id(),1,1,2.95);

    */
    
	