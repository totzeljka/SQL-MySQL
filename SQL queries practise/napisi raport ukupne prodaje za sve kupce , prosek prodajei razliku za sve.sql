use sql_invoicing;
select
	client_id,
    name,
    (select sum(invoice_total)
    from invoices
    where client_id = c.client_id) as total_sales,
    (select avg(invoice_total) from invoices) as average,
    (select total_sales - average) as difference    
from clients c

