
/* pravljenje izmena u eventu 
 dalje kucam kao redovan event i pravim izmenu na vec postojecem dogadjaju */
 
delimiter $$

alter event yearly_delete_stale_audit_rows;
on schedule
-- at '2019-01-01' 
every 1 year 
/*opciono mozemo dodati koliko traje, bitno je da se zavrsava nakon sto pocinje
-- at '2019-01-01' 
every 1 year  starts '2019-01-01'  ends'2029-01-01'
*/
do begin
delete from payments_audit
where action_date < now()-interval 1 year;
end $$

delimiter ;
