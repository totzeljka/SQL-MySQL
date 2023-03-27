select *
from invoices
where invoice_total> all(
select invoice_total
from invoices
where client_id=3

)