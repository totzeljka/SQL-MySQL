/*

explain select customer_id from customers where state='CA' or points >1000;

 1010 
 
 */

/*
explain 
select customer_id from customers
 where state='CA'
 union  
 select customer_id from customers
 where points >1000;  
 
 112-336
 */
/*

create index idx_points on customers (points);

explain 
select customer_id from customers
 where state='CA'
 union  
 select customer_id from customers
 where points >1000;  
 112/525
 */


explain select customer_id from customers
where points +10>2010;   /* 1010*/


explain select customer_id from customers
where points>2000;   /* 3    potrebno je izolovati kolone, ne mogu da primenjujem indeks nad kolonama nad kojima se vrsila neka operacija
*/


