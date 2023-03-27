delimiter $$
create procedure get_invoices_with_balance()
begin
select *
from invoices_with_balance
where balance > 0;
end $$
delimiter ;