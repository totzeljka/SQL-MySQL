/*prva konekcija:

use sql_store;
set transaction isolation level read committed;          *read committed menjam u repeatable read
select points from customeres where customer_id = 1;
select points from customeres where customer_id = 1;
commit;
*/

/*druga konekcija: */
use sql_store;
start transaction;
update customers
set points =30
where customer_id =1;
/*rollback;  iz proslog querria*/
commit;

/*
 otvaramo dve konekcije
 proveravam koliko ima poena :30
 izvrsavamo ctrl enter red po red: koraci :
 
					1 komitujem prvu transakciju ,
                    i promenim TIL u repeatable read i izvrsavam 
                    prva tri reda  
                    dobijam kao rezultat 30 poena 
                    
					2																	iz druge i menjam broj poena iz 30 u 40 i komitujem 
                        
					3	ocitavamo iz prve sledeci red tj drugi select stajtment
                    opet dobijam 30 umesto 40 zbog TIL
                    u ovom slucaju se desava problem fantomskog podatka
																			
					
 
 */

