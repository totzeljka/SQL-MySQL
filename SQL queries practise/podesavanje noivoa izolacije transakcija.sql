show variables like 'transaction_isolation%';

/* postavlja TIL za sledecu transakciju , samo jednu!*/
set  transaction isolation level serializable;

/* postavlja za sve buduce trasakcije u ovoj seciji /konekcije*/
set session transaction isolation level serializable;

/* za sve transakcije ubuduce*/
set global transaction isolation level serializable;