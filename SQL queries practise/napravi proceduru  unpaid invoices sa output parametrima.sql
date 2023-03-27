CREATE DEFINER=`root`@`localhost` PROCEDURE `get_unpaid_invoices_for_client`(
client_id int,
out invoices_count int,
out invoices_total decimal (9,2)

)
BEGIN
select  
	count(*) ,
	sum(invoice_total)
from invoices i
where i.client_id = client_id and payment_total=0;
END