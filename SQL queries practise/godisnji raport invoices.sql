select
	'First half of the 2019' as date_range,
    sum(invoice_total) as total_sales,
	sum(invoice_total) as total_payments,
	sum(invoice_total-payment_total) as what_we_expect
from invoices
where invoice_date 
	between '2019-01-01' and'2019-06-30'
union
select
	'Second of the 2019' as date_range,
	sum (payment_total) as total_sales,
	sum (invoice_total) as total_payments,
	sum ( invoice_total-payment_total) as what_we_expect
from invoices
where invoice_date 
	between '2019-07-01' and'2019-12-31'
    