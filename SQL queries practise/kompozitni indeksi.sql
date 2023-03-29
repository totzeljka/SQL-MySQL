use sql_store;
show indexes in customers;

create index idx_state_poinst on customers (state, points);
explain select customer_id from customers
where state = 'CA' and points >1000;
/*112 redova pre pisanja indeksa i 58 nakon pisanja indeksa*/

/*
redosled kolona u kompozitnim indeksima se formira po dva pravila: 
		prvo najcesce koriscena kolona, ili cesce
		prva kolona po kardinalnosti (kada idem show indexes cardinality predstavlja broj jedinstvenosti podataka u tok koloni sto je vise duplikata to je manji broj )
*/

select 
	count(distinct state),
    count(distinct last_name)
from customers; 
 /* kardinaliti koji dobijem je '48', '996' 
koju kolonu staviti prvu?
 */
 
 /*za pretragu */
 
 explain select customer_id
 from customers
 where state ='CA' and last_name like 'a%';
 
 /*kada bih pravila indekse po ove dve kolone , moguca su dva indeksa:*/
  /* rezultat prvog indeksa bi bio 7 redova, drugog 210 redova*/
create index idx_state_lastname on customers (state, last_name); 
create index idx_lastname_state on customers ( last_name,state);

/*zavisi i od pretrage, treba ukljuciti logicno razmisljanje, ako bih trazila samo last ame onda prvi indeks nema smisla*/