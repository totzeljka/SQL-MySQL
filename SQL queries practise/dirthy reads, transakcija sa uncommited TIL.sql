use sql_store;
start transaction;
update customers
set points =20
where customer_id =1;
/*commit;*/
rollback;
/*
 otvaramo dve konekcije u prvu pisem ovo dole , gore je drugi querry.
 proveravam koliko ima poena :2293
 izvrsavamo ctrl enter red po red: koraci :
 
					1	iz prve prva dva reda ,      								
					2																	iz druge prva dva reda 
																						(pokretanjem reda start transaction pokreceu 
                                                                                        se i ostale naredbe te se u tabeli menja podatak) 
                                                                                        medjutim nisamo zavrsili transakciju 
                                                                                        i mogue je napraviti promene u njoj
                        
					3	ocitavamo iz prve treci red i dobijamo 20 poena
                        umesto 2293 jer je transakcija pocela
                        i izmenjeni su podaci
																			
					4																menjam commit u rollback u drugoj i
																							izvrsavam
						
					5   sad u prvoj transakciji radim sa podatkom koji 
                        ne postoji (dirty reads!)
 
 
 */
/*prva konekcija:
use sql_store;
set transaction isolation level read uncommitted;
select points
from customeres
where customer_id = 1;

*/
