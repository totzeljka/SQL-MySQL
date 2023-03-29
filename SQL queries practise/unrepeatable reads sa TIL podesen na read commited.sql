use sql_store;
start transaction;
update customers
set points =20
where customer_id =1;
/*rollback;  iz proslog querria*/
commit;

/*
 otvaramo dve konekcije u prvu pisem ovo dole , gore je drugi querry.
 proveravam koliko ima poena :2293
 izvrsavamo ctrl enter red po red: koraci :
 
					1	iz prve prva dva reda ,      								
					2																	iz druge prva dva reda 
																						(pokretanjem reda start transaction pokreceu 
                                                                                        se i ostale naredbe te se u tabeli menja podatak) 
                                                                                        medjutim nisamo zavrsili transakciju 
                                                                                        i moguce je napraviti promene u njoj
                        
					3	ocitavamo iz prve treci red i dobijamo 2293 poena
                        umesto 20 jer je transakcija pocela
                        i izmenjeni su podaci ali nasa 
                        TIL sprecava da radimo sa nekomitovanim podacima
																			
					4																 menjam iz rollback u commit i izvrsavam																				izvrsavam
						
					5   sad u prvoj transakciji ako ponovo ucitam poene 
                    dobicu 20 jer je komitovano, sad se javlja problem
                    unrepeatable reads
 
 
 */
/*prva konekcija:
use sql_store;
set transaction isolation level read committed;
select points from customeres where customer_id = 1;
select points from customeres where customer_id = 1;
commit;
*/
