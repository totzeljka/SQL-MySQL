use sql_store;
start transaction;
update customers 
set points  = points +10
where customer_id =1;
commit;

/* ovaj kod kopiram i u novoj lokalnoj instanci, kucica - desni klik -pa open connection

 da se izvrsava jedna po jedna linija potrebno je otici na querry , execute current statement: ctrl enter je precica
 kliknem na red da se u njemu pojavi kursor i stiskam precicu red po red
  prvo u jednoj  do update customers pa u drugoj instanci,  videcemo da ce kod quer1 da se pojavi krugic kao da se loaduje
  tj ceka da se prva transakcija izvrsi na tom koraku
 */