select
	max(invoice_total) AS highest,
    min(invoice_total) AS lowest,
    avg(invoice_total) AS average,
    sum(invoice_total) AS total,
    count(invoice_total) AS number_of_invoices,
    count(payment_date) as count_of_payiments,
    count(*) as total_records
from invoices
    
    