
create view ecommerce.no_of_products as
SELECT ord.id,ord.cost,ord.date,ord.discount,ps.type_payment
FROM ecommerce.orders ord
INNER JOIN ecommerce.payment_source ps
ord.id=ps.id;

select * from ecommerce.no_of_products;
