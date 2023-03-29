delimiter $$
drop trigger if exists payments_after_delete;
create trigger payments_after_delete
after delete on payments
for each row
begin
update invoices
set payment_total = payment_total - old.amount
where invoice_id = old.invoice_id;

insert into payments_audit
values (old.client_id, old.date, old.amount, 'Deleted', now());
end $$
delimiter ;
