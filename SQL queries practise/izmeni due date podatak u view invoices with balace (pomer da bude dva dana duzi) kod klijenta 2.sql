use sql_invoicing;
update invoices_with_balance
set due_date= date_add(due_date, interval 2 day )
where invoice_id =2