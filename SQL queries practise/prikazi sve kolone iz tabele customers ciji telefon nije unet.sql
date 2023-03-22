SELECT * 
FROM customers
WHERE phone IS NULL

/* izlistace sve koje imaju telefon ako  ukucam   IS NOT NULL

ili recimo sve narudzbine koje nisu poslate iz orders tabele
select * 
from orders
where shipped_date IS NULL
 */