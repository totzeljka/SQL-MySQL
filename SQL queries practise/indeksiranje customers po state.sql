use sql_store;
explain select customer_id
from customers
where state ='CA';

/*
kada uradim gornji kueri dobijam 1010 redova kao rezultat
kao rezultat dobije se tabela u kojoj mozemo videti uk broj redova, kao na neki nacin sinonim za :

select count(*) customers  dobijem broj redova
 nakon uvodjenja indeksa kao rezultat kada ponovim isti kod od gore dobija, 112

*/

create index idx_state on customers(state);