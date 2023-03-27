create or replace view invoices_with_balance as
select
	invoice_id,
    number
    client_id,
    invoice_total,
    invoice_date,
    payment_total, 
    invoice_total - payment_total as balance,
    due_date,
    payment_date

from invoices
where (invoice_total-payment_total) >0
with check option
/*

with check option osigurava da se iz viewa nakon updat-a nekog reda taj red ne obrise */
