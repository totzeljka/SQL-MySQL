drop procedure if exists  get_clients_by_state;

delimiter $$
create procedure get_clients_by_state
(
	state char(2)
)
begin
	select *from clients c
    where c.state = ifnull(state, c.state);
end $$
delimiter ;


/*
isto kao ono gore samo sto je gornje malo bolje, profesionalnije
drop procedure if exists  get_clients_by_state;

delimiter $$
create procedure get_clients_by_state
(
	state char(2)
)
begin
if state is null then
	select *from clients;
else
	select *
	from clients c
    where c.state = state;
end if;
end $$
delimiter ;


*/