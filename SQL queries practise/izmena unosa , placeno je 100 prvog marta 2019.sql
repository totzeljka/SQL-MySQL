use sql_invoicing;
update invoices
set payment_total= 100 , payment_date='2019-03-01'
where invoice_id=1