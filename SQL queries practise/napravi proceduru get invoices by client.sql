drop procedure if exists  get_invoices_by_client;

delimiter $$
create procedure get_invoices_by_client
(
client_id int
)
begin
	select *
	from invoices i
    where i.cliet_id = client_id;
end $$
delimiter ;