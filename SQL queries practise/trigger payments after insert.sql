delimiter $$
drop trigger if exists  payments_after_insert;
create trigger payments_after_insert
	after insert on payments
	for each row
begin
update invoices
set payment_total= payment_total + new.amount
where invoice_id = new.invoice_id;

insert into payments_audit
values (new.client_id, new.date, new.amount, 'Insert', now());

end $$
delimiter ;