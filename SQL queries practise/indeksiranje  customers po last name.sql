/*izvrsavam jedan po jedan red */

select count(*) from customers;  /*  1010 redova  */

select 
	count(distinct left (last_name,1)),  /*  25 redova  */
    count(distinct left (last_name,2)),    /*  175 redova  */
    count(distinct left (last_name,3)),   /*  630 redova  */
    count(distinct left (last_name,4)),    /*  880 redova  */
	count(distinct left (last_name,5)),    /*  966 redova   dakle pet karaktera je optimalno*/  
    count(distinct left (last_name,10))    /* 966 redova  */
from customers;


create index idx_lastname on customers(last_name(5));
