/*prva konekcija:

use sql_store;
set transaction isolation level  serializable;   
start transaction;
select * from customeres where state = 'VA';
commit;
*/

/*druga konekcija: */
use sql_store;
start transaction;
update customers
set state = 'VA'
where customer_id =1;
commit;

/*
 otvaramo dve konekcije
 proveravamo 
 izvrsavamo ctrl enter red po red: koraci :
 
					1 u prvoj transakciji izvrsim sve redove do commit-a 
                    ali ne i commit naredbu
                    
					2																	iz druge izvrsavano sve do pretposlednje g reda
																						prilikom izvrsavanja pretposlednjeg reda javlja se greska 
                                                                                        error 1213 deadlock koja znaci 
                                                                                        da nam druga transakcija ceka prvu a prva drugu da se izvrsi
						
					
 
 */

