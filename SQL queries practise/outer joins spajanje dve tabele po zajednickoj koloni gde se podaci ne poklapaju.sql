/*
u ovom slucaju imacu samo deset rezultata
select *
from orders o
Join customers c on  o.customer_id=c.customer_id
Order by c.customer_id

Obzirom da u customers tabeli imamo i korisnika koji nemaju narudzbine oni se u gornjem queriju nece pojaviti, 
zato koristimo outer joins;
 postoje dva tipa:
LEFT -prva upotrebljena tj leva-- najbolja praksa ove uporebljavati
RIGHT -druga upotrebljena tj desna tabela

Left ce u ovom dole slucaju uzimati tabelu customers i dodati joj podatke iz order a ako  nema podatak kao npr narudzbinu pisace null
Right uzima iz orders 

Inner i outer su opcione ne moraju se koristiti, obe linije rade isto :
RIGHT  Join orders o on  o.customer_id=c.customer_id
RIGHT OUTER Join orders o on  o.customer_id=c.customer_id

*/

select *
from customers c 
RIGHT  Join orders o on  o.customer_id=c.customer_id
Order by c.customer_id