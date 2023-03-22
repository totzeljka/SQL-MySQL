select *
from orders o, customers c
Where  o.customer_id=c.customer_id


/* ovo gore se zove implicitno spajanje i nije preporuka da se cesto koristi jer ako se ne unese where ili se obrise negde u izmenama  moze da se desi da se cele dbve tabele spoje 
isto :

select *
from orders o
Join customers c on  o.customer_id=c.customer_id
*/

