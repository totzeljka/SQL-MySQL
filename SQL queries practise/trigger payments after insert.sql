delimiter $$
create trigger payments_after_insert
			/* ime tabele, kad i sta trigeruje*/
	after insert on payments
	for each row
begin
update invoices
set payment_total= payment_total + new.amount
where invoice_id = new.invoice_id;
end $$
delimiter ;