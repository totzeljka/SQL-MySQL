select *
from clients
where client_id = any (
 select client_id
 from invoices
 group by client_id
 
 /* lifb*/
 having count(*) >= 2



)