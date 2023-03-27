drop procedure if exists make_payment;

delimiter $$
create procedure make_payment
(
	invoice_id int,
    payment_amount decimal (9, 2),
    payment_date date
)
begin
/*validacija parametra, na sqlstate errors na imb.com sajtu mogu se naci svi kodovi i njihovio znacenje */
if 
	payment_amount <= 0 
    then signal sqlstate '22003' 
    set message_text= 'Invalid payment amount.';
	end if;
    update invoices i
    set 
		i.payment_total = payment_amount,
		i.payment_date=payment_date
			where i.invoice_id = invoice_id;
end $$
delimiter ;

