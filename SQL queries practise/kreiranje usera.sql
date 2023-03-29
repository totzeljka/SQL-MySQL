
/*zeljka moze da se konektuje od bilo gde sa sifrom 1234 nikad ne koristiti jednostavne sifre kao sto je ova ovo je samo primer*/
create user zeljka identified by '1234'

/* ako dodamo ip adresu moci ce da se definise sa koje adrese sme da se konektuje
create user zeljka@96.47.239.240   */

/* ako dodamo localhost predstavlja trenutni kompjuter na kojem imam instaliram mysql
create user zeljka@localhost   */

/* ako dodamo ime domena, svi kompjuteri na tom domenu mogu da se loguju ali ne i oni na subdomenima
create user zeljka@codewithmosh.com  */

/* ako dodamo ime domena, svi kompjuteri na tom domenu mogu da se loguju kao i oni na subdomenima
create user zeljka@'%.codewithmosh.com'  */

