drop procedure if exists  get_clients_by_state;

delimiter $$
create procedure get_clients_by_state
(
state char(2)
)
begin
if state is null then
set state ='CA';
end if;
	select *
	from clients c
    where c.state = state;
end $$
delimiter ;