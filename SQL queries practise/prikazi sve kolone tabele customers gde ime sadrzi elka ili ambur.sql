SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur'

/*
isto tako moze i da:

prezime pocinje sa MY ili da sadrzi SE
WHERE last_name REGEXP '^my|se'


prezime se zavrsava sa ey ili on
WHERE last_name REGEXP 'ey$|on$'

prezime sadrzi b koje prate r ili u
WHERE last_name REGEXP 'b[ru]'
moze da se napise i ovako WHERE last_name REGEXP 'br|bu'

*/