SELECT order_id, orders.customer_id,  first_name, last_name
FROM orders
INNER JOIN customers ON orders.customer_id=customers.customer_id

/*
ako zelim da prikaze i one kolone po kojima izjednacavam dve tabele 
moram tacno naznaciti odakle se uzima jer u suprotnom javlja gresku, svejedno je odakle
takodje mogu dodeliti alias na ime tabele pa koristiti njega tajko sto cu ga samo dodati posle imena tabele:

SELECT order_id, o.customer_id,  first_name, last_name
FROM orders o
INNER JOIN customers c
ON o.customer_id=c.customer_id


*/