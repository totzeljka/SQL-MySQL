delimiter $$
create trigger payments_after_delete
after delete on payments
for each row
begin
update invoices
set payment_total = payment_total - old.amount
where invoice_id = old.invoice_id;
end $$
delimiter ;
